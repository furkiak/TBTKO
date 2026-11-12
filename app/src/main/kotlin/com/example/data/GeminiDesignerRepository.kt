package com.example.data

import android.util.Log
import com.google.firebase.Firebase
import com.google.firebase.ai.ai
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.firestore.FirebaseFirestore
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withTimeout
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

private const val TAG = "GeminiDesignerRepo"

sealed interface GeminiDesignState {
    data object Idle : GeminiDesignState
    data object Generating : GeminiDesignState
    data class Streaming(val partialText: String) : GeminiDesignState
    data class Success(val worldDesign: GeneratedWorldDesign) : GeminiDesignState
    data class Error(val message: String) : GeminiDesignState
}

data class GeneratedWorldDesign(
    val id: String,
    val title: String,
    val zoneType: String,
    val prompt: String,
    val fullContent: String,
    val authorId: String,
    val createdAt: String,
    val isSavedToCloud: Boolean = false
)

class GeminiDesignerRepository {
    private val firestore: FirebaseFirestore = FirebaseFirestore.getInstance()
    private val auth: FirebaseAuth = FirebaseAuth.getInstance()
    private val timeFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US)

    // Lazy initialization of Firebase AI Logic Gemini model as mandated by guidelines
    private val generativeModel by lazy {
        Firebase.ai.generativeModel("gemini-3.8-flash")
    }

    private val _designState = MutableStateFlow<GeminiDesignState>(GeminiDesignState.Idle)
    val designState: StateFlow<GeminiDesignState> = _designState.asStateFlow()

    private val _savedDesigns = MutableStateFlow<List<GeneratedWorldDesign>>(emptyList())
    val savedDesigns: StateFlow<List<GeneratedWorldDesign>> = _savedDesigns.asStateFlow()

    // Real-time world design generation using Gemini API via Firebase AI Logic
    suspend fun generateWorldDesign(userPrompt: String, isVoiceInput: Boolean = false) {
        _designState.value = GeminiDesignState.Generating
        val accumulated = StringBuilder()

        try {
            val systemContext = """
                You are the Knight Online (AREKOLO / Aurion) Chief World Designer & MCP Game Architect.
                The game features Karus (Orcs) vs El Morad (Humans), zones with .smd map geometry, Lua quest scripts, and an Anvil upgrade engine (+1 to +10).
                
                The developer has provided this prompt: "$userPrompt" ${if (isVoiceInput) "(Spoken via Voice Micro Function)" else ""}
                
                Generate a comprehensive, production-grade Game Design specification including:
                1. ZONE NAME & GEOMETRY: (SMD Map file recommendation, Biome, Level Bracket, PvP/Safe Zone rules)
                2. LORE & ATMOSPHERE: (Dark fantasy theme, weather, lighting shaders)
                3. MONSTER ROSTER & DROP TABLE: (3-5 monsters with HP, AP, EXP and authentic drops like Raptor, Shard, Chitin, BUS)
                4. BOSS ENCOUNTER & AI BEHAVIOR: (Boss name, phase triggers, Aurion behavior tree mechanics)
                5. EXECUTABLE LUA QUEST SCRIPT: (Ready-to-use Knight Online Lua quest code formatted with OnTalk, CheckLevel, GiveItem, etc.)
                6. SQL SCHEMA INSERT STATEMENTS: (INSERT queries for kn_online ZONE_INFO and ITEM_TABLE)
                
                Keep the tone inspiring, precise, and directly usable by the server engine.
            """.trimIndent()

            withTimeout(60_000L) {
                generativeModel.generateContentStream(systemContext).collect { chunk ->
                    val text = chunk.text.orEmpty()
                    accumulated.append(text)
                    _designState.value = GeminiDesignState.Streaming(accumulated.toString())
                }
            }

            val finalOutput = accumulated.toString()
            if (finalOutput.isNotBlank()) {
                val title = extractTitleFromContent(finalOutput, userPrompt)
                val design = GeneratedWorldDesign(
                    id = "design_" + System.currentTimeMillis(),
                    title = title,
                    zoneType = "Custom World Zone",
                    prompt = userPrompt,
                    fullContent = finalOutput,
                    authorId = auth.currentUser?.uid ?: "anonymous",
                    createdAt = timeFormat.format(Date()),
                    isSavedToCloud = false
                )
                _designState.value = GeminiDesignState.Success(design)
                _savedDesigns.value = listOf(design) + _savedDesigns.value

                // Automatically save to Cloud Firestore if user is authenticated
                saveDesignToFirestore(design)
            } else {
                _designState.value = GeminiDesignState.Error("Gemini returned an empty design response.")
            }
        } catch (e: TimeoutCancellationException) {
            Log.e(TAG, "Gemini generation timed out", e)
            _designState.value = GeminiDesignState.Error("World generation timed out after 60 seconds. Please check your network and try again.")
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            Log.e(TAG, "Gemini generation error", e)
            _designState.value = GeminiDesignState.Error("Gemini Error: ${e.localizedMessage ?: "Failed to generate design."}")
        }
    }

    private suspend fun saveDesignToFirestore(design: GeneratedWorldDesign) {
        val user = auth.currentUser ?: return
        try {
            val docRef = firestore.collection("world_designs").document(design.id)
            val data = mapOf(
                "title" to design.title,
                "authorId" to user.uid,
                "authorEmail" to (user.email ?: ""),
                "zoneType" to design.zoneType,
                "prompt" to design.prompt,
                "designContent" to design.fullContent,
                "createdAt" to System.currentTimeMillis()
            )
            docRef.set(data).await()
            _savedDesigns.value = _savedDesigns.value.map {
                if (it.id == design.id) it.copy(isSavedToCloud = true) else it
            }
            if (_designState.value is GeminiDesignState.Success) {
                val current = (_designState.value as GeminiDesignState.Success).worldDesign
                if (current.id == design.id) {
                    _designState.value = GeminiDesignState.Success(current.copy(isSavedToCloud = true))
                }
            }
            Log.d(TAG, "World design successfully saved to Cloud Firestore.")
        } catch (e: Exception) {
            Log.w(TAG, "Failed to persist world design to Firestore (will remain in local session)", e)
        }
    }

    private fun extractTitleFromContent(content: String, prompt: String): String {
        val lines = content.lines().filter { it.isNotBlank() }
        for (line in lines.take(5)) {
            val clean = line.replace("#", "").replace("*", "").trim()
            if (clean.length in 5..60 && !clean.startsWith("You are") && !clean.startsWith("1.")) {
                return clean
            }
        }
        return "Zone: " + prompt.take(30)
    }

    fun resetState() {
        _designState.value = GeminiDesignState.Idle
    }
}
