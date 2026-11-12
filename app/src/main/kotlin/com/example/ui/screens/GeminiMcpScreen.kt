package com.example.ui.screens

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.data.GeminiDesignState
import com.example.data.GeminiDesignerRepository
import com.example.ui.theme.*
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

@Composable
fun GeminiMcpScreen(
    repository: GeminiDesignerRepository,
    modifier: Modifier = Modifier
) {
    val designState by repository.designState.collectAsState()
    val savedDesigns by repository.savedDesigns.collectAsState()

    var promptInput by remember { mutableStateOf("") }
    var isVoiceActive by remember { mutableStateOf(false) }
    var voiceTranscript by remember { mutableStateOf<String?>(null) }
    val scope = rememberCoroutineScope()

    // Voice pulsation animation
    val infiniteTransition = rememberInfiniteTransition(label = "voicePulse")
    val micPulse by infiniteTransition.animateFloat(
        initialValue = 1.0f,
        targetValue = 1.25f,
        animationSpec = infiniteRepeatable(
            animation = tween(600, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ),
        label = "micPulseAnim"
    )

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Hero Card: MCP Game Designer & Gemini API
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(20.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, AurionPurple.copy(alpha = 0.5f), RoundedCornerShape(20.dp))
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier = Modifier
                                    .size(36.dp)
                                    .background(AurionPurpleContainer, CircleShape),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(Icons.Default.AutoAwesome, contentDescription = null, tint = AurionPurple)
                            }
                            Spacer(modifier = Modifier.width(10.dp))
                            Column {
                                Text(
                                    text = "GEMINI MCP GAME DESIGNER",
                                    style = MaterialTheme.typography.titleSmall,
                                    fontWeight = FontWeight.Bold,
                                    color = AurionPurple
                                )
                                Text(
                                    text = "Real-Time World & Quest Architect (Gemini 3.8 Flash)",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = TextSecondary,
                                    fontSize = 11.sp
                                )
                            }
                        }

                        Box(
                            modifier = Modifier
                                .clip(RoundedCornerShape(8.dp))
                                .background(Color(0xFF2E1065))
                                .padding(horizontal = 8.dp, vertical = 4.dp)
                        ) {
                            Text(
                                text = "AI LOGIC READY",
                                style = MaterialTheme.typography.labelSmall,
                                color = Color(0xFFC084FC),
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(14.dp))

                    Text(
                        text = "Speak or enter natural language prompts to architect new Knight Online world zones, monster spawn tables, Lua quest scripts, and boss behavior trees in real-time.",
                        style = MaterialTheme.typography.bodySmall,
                        color = TextPrimary
                    )
                }
            }
        }

        // Voice Micro Function Card
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = Color(0xFF0F172A)),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, if (isVoiceActive) AurionCyan else OutlineDark, RoundedCornerShape(16.dp))
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(Icons.Default.Mic, contentDescription = null, tint = AurionCyan, modifier = Modifier.size(18.dp))
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Voice Micro Function",
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = TextPrimary
                            )
                        }
                        Text(
                            text = if (isVoiceActive) "LISTENING..." else "TAP MIC TO SPEAK",
                            style = MaterialTheme.typography.labelSmall,
                            color = if (isVoiceActive) AurionCyan else TextMuted,
                            fontWeight = FontWeight.Bold
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    // Big Mic Button with Pulse Effect
                    Box(
                        modifier = Modifier
                            .size(64.dp)
                            .clip(CircleShape)
                            .background(if (isVoiceActive) AurionCyan.copy(alpha = 0.25f * micPulse) else SurfaceVariantDark)
                            .border(2.dp, if (isVoiceActive) AurionCyan else OutlineDark, CircleShape)
                            .clickable {
                                if (!isVoiceActive) {
                                    isVoiceActive = true
                                    voiceTranscript = "Listening to speech input..."
                                    scope.launch {
                                        delay(1500)
                                        val sampleVoiceQueries = listOf(
                                            "Design an icy underworld dungeon in Bifrost with frost behemoths and unique staff drops",
                                            "Create an assassin quest for Luferson Castle with a +8 Mirage Dagger reward",
                                            "Architect a Colony Zone border monument with dynamic monster spawns and boss Felankor",
                                            "Generate an open-world arena for Karus vs El Morad clan wars with +9 weapon drops"
                                        )
                                        val spoken = sampleVoiceQueries.random()
                                        voiceTranscript = "\"$spoken\""
                                        promptInput = spoken
                                        isVoiceActive = false
                                        // Auto trigger generation
                                        repository.generateWorldDesign(spoken, isVoiceInput = true)
                                    }
                                } else {
                                    isVoiceActive = false
                                }
                            }
                            .testTag("voice_mic_button"),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Mic,
                            contentDescription = "Voice Input",
                            tint = if (isVoiceActive) AurionCyan else TextPrimary,
                            modifier = Modifier.size(32.dp)
                        )
                    }

                    if (voiceTranscript != null) {
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = voiceTranscript ?: "",
                            style = MaterialTheme.typography.bodySmall,
                            color = AurionCyan,
                            fontSize = 12.sp,
                            fontFamily = FontFamily.Monospace
                        )
                    }
                }
            }
        }

        // Quick Suggestion Chips
        item {
            Text(
                text = "Preset World Design Directives:",
                style = MaterialTheme.typography.labelMedium,
                color = TextSecondary
            )
            Spacer(modifier = Modifier.height(6.dp))
            LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                val suggestions = listOf(
                    "Bifrost Ice Abyss Dungeon",
                    "Ardream Level 59 Skirmish Zone",
                    "Assassin Quest +8 Shard Reward",
                    "Dragon Room Boss Encounter",
                    "Krowaz Armor Crafting Forge"
                )
                items(suggestions) { sugg ->
                    Box(
                        modifier = Modifier
                            .clip(RoundedCornerShape(8.dp))
                            .background(SurfaceVariantDark)
                            .clickable {
                                promptInput = "Design: $sugg for Knight Online"
                                scope.launch {
                                    repository.generateWorldDesign(promptInput)
                                }
                            }
                            .padding(horizontal = 10.dp, vertical = 6.dp)
                    ) {
                        Text(
                            text = sugg,
                            style = MaterialTheme.typography.labelSmall,
                            color = GoldPrimary
                        )
                    }
                }
            }
        }

        // Natural Language Input Bar
        item {
            OutlinedTextField(
                value = promptInput,
                onValueChange = { promptInput = it },
                modifier = Modifier
                    .fillMaxWidth()
                    .testTag("gemini_prompt_input"),
                placeholder = { Text("Prompt Gemini MCP Game Designer...", color = TextMuted) },
                trailingIcon = {
                    IconButton(
                        onClick = {
                            if (promptInput.isNotBlank()) {
                                val p = promptInput
                                promptInput = ""
                                scope.launch { repository.generateWorldDesign(p) }
                            }
                        },
                        modifier = Modifier.testTag("gemini_submit_button")
                    ) {
                        Icon(Icons.Default.Send, contentDescription = "Generate", tint = AurionPurple)
                    }
                },
                keyboardOptions = KeyboardOptions(imeAction = ImeAction.Send),
                keyboardActions = KeyboardActions(onSend = {
                    if (promptInput.isNotBlank()) {
                        val p = promptInput
                        promptInput = ""
                        scope.launch { repository.generateWorldDesign(p) }
                    }
                }),
                shape = RoundedCornerShape(14.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = AurionPurple,
                    unfocusedBorderColor = OutlineDark,
                    focusedTextColor = TextPrimary,
                    unfocusedTextColor = TextPrimary
                )
            )
        }

        // Generation Output Box
        item {
            when (val state = designState) {
                is GeminiDesignState.Idle -> {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(14.dp))
                            .background(Color(0xFF090D15))
                            .padding(24.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Icon(Icons.Default.Psychology, contentDescription = null, tint = TextMuted, modifier = Modifier.size(40.dp))
                            Spacer(modifier = Modifier.height(10.dp))
                            Text(
                                text = "Awaiting World Design Prompt",
                                style = MaterialTheme.typography.titleSmall,
                                color = TextSecondary
                            )
                            Text(
                                text = "Tap the Voice Mic or enter a prompt above to architect game assets",
                                style = MaterialTheme.typography.bodySmall,
                                color = TextMuted,
                                fontSize = 11.sp
                            )
                        }
                    }
                }
                is GeminiDesignState.Generating -> {
                    Card(
                        colors = CardDefaults.cardColors(containerColor = Color(0xFF090D15)),
                        shape = RoundedCornerShape(14.dp),
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(24.dp),
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator(color = AurionPurple)
                            Spacer(modifier = Modifier.height(14.dp))
                            Text(
                                text = "GEMINI ARCHITECTING WORLD...",
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = AurionPurple
                            )
                            Text(
                                text = "Formulating SMD geometry, drop matrices, and Lua scripts",
                                style = MaterialTheme.typography.bodySmall,
                                color = TextSecondary
                            )
                        }
                    }
                }
                is GeminiDesignState.Streaming -> {
                    Card(
                        colors = CardDefaults.cardColors(containerColor = Color(0xFF090D15)),
                        shape = RoundedCornerShape(14.dp),
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                CircularProgressIndicator(color = AurionPurple, modifier = Modifier.size(16.dp), strokeWidth = 2.dp)
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = "Streaming Design Content...",
                                    style = MaterialTheme.typography.labelMedium,
                                    color = AurionPurple
                                )
                            }
                            Spacer(modifier = Modifier.height(10.dp))
                            Text(
                                text = state.partialText,
                                fontFamily = FontFamily.Monospace,
                                fontSize = 12.sp,
                                color = TextPrimary
                            )
                        }
                    }
                }
                is GeminiDesignState.Success -> {
                    val design = state.worldDesign
                    Card(
                        colors = CardDefaults.cardColors(containerColor = Color(0xFF090D15)),
                        shape = RoundedCornerShape(16.dp),
                        modifier = Modifier
                            .fillMaxWidth()
                            .border(1.dp, AurionPurple.copy(alpha = 0.5f), RoundedCornerShape(16.dp))
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Column {
                                    Text(
                                        text = design.title,
                                        style = MaterialTheme.typography.titleMedium,
                                        fontWeight = FontWeight.Bold,
                                        color = GoldPrimary
                                    )
                                    Text(
                                        text = "Generated: ${design.createdAt}",
                                        style = MaterialTheme.typography.labelSmall,
                                        color = TextMuted
                                    )
                                }

                                if (design.isSavedToCloud) {
                                    Box(
                                        modifier = Modifier
                                            .clip(RoundedCornerShape(6.dp))
                                            .background(SuccessEmeraldContainer)
                                            .padding(horizontal = 8.dp, vertical = 4.dp)
                                    ) {
                                        Text(
                                            text = "SAVED TO FIRESTORE",
                                            style = MaterialTheme.typography.labelSmall,
                                            color = SuccessEmerald,
                                            fontWeight = FontWeight.Bold
                                        )
                                    }
                                }
                            }

                            Spacer(modifier = Modifier.height(14.dp))

                            Text(
                                text = design.fullContent,
                                fontFamily = FontFamily.Monospace,
                                fontSize = 12.sp,
                                color = TextPrimary,
                                lineHeight = 18.sp
                            )
                        }
                    }
                }
                is GeminiDesignState.Error -> {
                    Card(
                        colors = CardDefaults.cardColors(containerColor = Color(0xFF1F0A0A)),
                        shape = RoundedCornerShape(14.dp),
                        modifier = Modifier
                            .fillMaxWidth()
                            .border(1.dp, DangerRed, RoundedCornerShape(14.dp))
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Icon(Icons.Default.ErrorOutline, contentDescription = null, tint = DangerRed)
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = "Gemini AI Inference Error",
                                    style = MaterialTheme.typography.titleSmall,
                                    fontWeight = FontWeight.Bold,
                                    color = DangerRed
                                )
                            }
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(text = state.message, style = MaterialTheme.typography.bodySmall, color = TextPrimary)
                        }
                    }
                }
            }
        }

        // Saved Designs History
        if (savedDesigns.isNotEmpty()) {
            item {
                Text(
                    text = "Previously Architected World Designs (${savedDesigns.size}):",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )
            }

            items(savedDesigns) { design ->
                Card(
                    colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                    shape = RoundedCornerShape(12.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Column(modifier = Modifier.padding(12.dp)) {
                        Text(text = design.title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.Bold, color = GoldPrimary)
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(text = design.prompt, style = MaterialTheme.typography.bodySmall, color = TextSecondary, fontSize = 11.sp)
                    }
                }
            }
        }
    }
}
