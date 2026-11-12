package com.example.data

import android.util.Log
import com.example.data.model.Nation
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.firestore.FirebaseFirestore
import com.google.firebase.firestore.SetOptions
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.tasks.await
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

private const val TAG = "FirestoreSqlRepo"

data class SqlTableDefinition(
    val tableName: String,
    val description: String,
    val primaryKey: String,
    val rowCount: Int,
    val sampleColumns: List<String>,
    val sampleRows: List<Map<String, String>>
)

data class MscSequenceStep(
    val stepNumber: Int,
    val fromNode: String,
    val toNode: String,
    val opcode: String,
    val label: String,
    val latencyMs: Float,
    val isAurionZeroCopy: Boolean = true
)

data class FirestoreSyncStatus(
    val isSyncing: Boolean = false,
    val lastSyncTime: String = "Never",
    val syncedDocumentCount: Int = 0,
    val activeCollection: String = "server_state",
    val error: String? = null
)

class FirestoreSqlRepository {
    private val firestore: FirebaseFirestore = FirebaseFirestore.getInstance()
    private val auth: FirebaseAuth = FirebaseAuth.getInstance()
    private val timeFormat = SimpleDateFormat("HH:mm:ss", Locale.US)

    private val _syncStatus = MutableStateFlow(FirestoreSyncStatus())
    val syncStatus: StateFlow<FirestoreSyncStatus> = _syncStatus.asStateFlow()

    private val _sqlTables = MutableStateFlow(createInitialSqlTables())
    val sqlTables: StateFlow<List<SqlTableDefinition>> = _sqlTables.asStateFlow()

    private val _mscSteps = MutableStateFlow(createInitialMscSteps())
    val mscSteps: StateFlow<List<MscSequenceStep>> = _mscSteps.asStateFlow()

    suspend fun syncSqlDatabaseToFirestore(tableName: String = "USERDATA"): Result<Int> {
        val currentUser = auth.currentUser
        if (currentUser == null) {
            _syncStatus.value = _syncStatus.value.copy(
                error = "Authentication required. Please sign in with Google to sync with Cloud Firestore."
            )
            return Result.failure(IllegalStateException("User is not signed in."))
        }

        _syncStatus.value = _syncStatus.value.copy(isSyncing = true, error = null)
        return try {
            val table = _sqlTables.value.firstOrNull { it.tableName == tableName }
                ?: _sqlTables.value.first()

            var count = 0
            val batch = firestore.batch()

            table.sampleRows.forEachIndexed { index, row ->
                val docId = "${table.tableName.lowercase()}_${index + 1}"
                val docRef = firestore.collection("server_state").document(docId)
                val data = row.toMutableMap<String, Any>()
                data["_sql_source_table"] = table.tableName
                data["_synced_by"] = currentUser.uid
                data["_synced_at"] = System.currentTimeMillis()
                batch.set(docRef, data, SetOptions.merge())
                count++
            }

            // Also record server cluster telemetry
            val telemetryRef = firestore.collection("server_state").document("cluster_telemetry")
            batch.set(
                telemetryRef,
                mapOf(
                    "status" to "ONLINE",
                    "tps" to 60.0,
                    "aurionZeroCopy" to true,
                    "syncedTable" to table.tableName,
                    "updatedAt" to System.currentTimeMillis()
                ),
                SetOptions.merge()
            )

            batch.commit().await()

            _syncStatus.value = FirestoreSyncStatus(
                isSyncing = false,
                lastSyncTime = timeFormat.format(Date()),
                syncedDocumentCount = count + 1,
                activeCollection = "server_state",
                error = null
            )
            Result.success(count)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to sync SQL data to Firestore", e)
            _syncStatus.value = _syncStatus.value.copy(
                isSyncing = false,
                error = e.localizedMessage ?: "Sync failed."
            )
            Result.failure(e)
        }
    }

    private fun createInitialMscSteps(): List<MscSequenceStep> = listOf(
        MscSequenceStep(1, "Client (Launcher)", "LogInServer:15100", "0x10 WIZ_LOGIN", "Version Handshake & Account Auth", 0.8f),
        MscSequenceStep(2, "LogInServer", "SQL ODBC (kn_online)", "SELECT", "Verify ACCOUNT_LOGIN & Active Sub", 1.2f),
        MscSequenceStep(3, "LogInServer", "Client", "0x11 WIZ_SERVERLIST", "Server List: Adonis 1 & 2 Online", 0.4f),
        MscSequenceStep(4, "Client", "GameServer:20000", "0x01 WIZ_GAMESTART", "Character Selection & Zone Transfer", 0.7f),
        MscSequenceStep(5, "GameServer", "AIServer:10020", "0x40 WIZ_ZONE_ENTER", "Spawn Player in Zone 21 (Colony Zone)", 0.3f),
        MscSequenceStep(6, "AIServer", "GameServer", "0x45 WIZ_NPC_SYNC", "Push 340 Monster & NPC coordinates", 0.6f),
        MscSequenceStep(7, "GameServer", "SQL ODBC", "UPDATE USERDATA", "Save Position, Noah & EXP", 1.5f),
        MscSequenceStep(8, "GameServer", "Cloud Firestore", "SET server_state", "Realtime Cloud State Mirror & Analytics", 2.1f)
    )

    private fun createInitialSqlTables(): List<SqlTableDefinition> = listOf(
        SqlTableDefinition(
            tableName = "USERDATA",
            description = "Player character profiles, stats, nation, and inventory coordinates.",
            primaryKey = "strUserID (VARCHAR 21)",
            rowCount = 1420,
            sampleColumns = listOf("strUserID", "Nation", "Class", "Level", "Exp", "Gold", "Points", "Loyalty"),
            sampleRows = listOf(
                mapOf("strUserID" to "xDeathBringer", "Nation" to "Karus", "Class" to "Berserker", "Level" to "83", "Gold" to "124,500,000", "Loyalty" to "425,000"),
                mapOf("strUserID" to "ShadowAssassin", "Nation" to "El Morad", "Class" to "Assassin", "Level" to "83", "Gold" to "89,200,000", "Loyalty" to "380,000"),
                mapOf("strUserID" to "HolyHealer", "Nation" to "El Morad", "Class" to "Cleric", "Level" to "80", "Gold" to "45,000,000", "Loyalty" to "210,000"),
                mapOf("strUserID" to "FlameLord", "Nation" to "Karus", "Class" to "Necromancer", "Level" to "82", "Gold" to "65,300,000", "Loyalty" to "295,000")
            )
        ),
        SqlTableDefinition(
            tableName = "KNIGHTS",
            description = "Clan alliance data, castle ownership, and National Point leaderboards.",
            primaryKey = "IDNum (SMALLINT)",
            rowCount = 64,
            sampleColumns = listOf("IDNum", "IDName", "Nation", "Ranking", "Points", "Chief", "Members"),
            sampleRows = listOf(
                mapOf("IDNum" to "101", "IDName" to "TheImmortalKnights", "Nation" to "El Morad", "Ranking" to "Royal 1", "Points" to "1,284,500", "Chief" to "xSirLancelot", "Members" to "48"),
                mapOf("IDNum" to "102", "IDName" to "KarusWarLords", "Nation" to "Karus", "Ranking" to "Royal 1", "Points" to "1,240,200", "Chief" to "BloodAxeGorgor", "Members" to "50"),
                mapOf("IDNum" to "103", "IDName" to "SecretSyndicate", "Nation" to "El Morad", "Ranking" to "Royal 2", "Points" to "980,400", "Chief" to "ShadowDagger", "Members" to "44")
            )
        ),
        SqlTableDefinition(
            tableName = "ITEM_TABLE",
            description = "Item catalog, base attack power, defense, weight, and upgrade types.",
            primaryKey = "Num (INT)",
            rowCount = 8540,
            sampleColumns = listOf("Num", "strName", "Kind", "Damage", "Ac", "Weight", "ReqLevel"),
            sampleRows = listOf(
                mapOf("Num" to "101010001", "strName" to "Raptor", "Kind" to "Two-Handed Axe", "Damage" to "187", "Ac" to "0", "Weight" to "80", "ReqLevel" to "70"),
                mapOf("Num" to "102010001", "strName" to "Shard", "Kind" to "Dagger", "Damage" to "102", "Ac" to "0", "Weight" to "25", "ReqLevel" to "70"),
                mapOf("Num" to "103010001", "strName" to "Iron Impact", "Kind" to "Club", "Damage" to "182", "Ac" to "0", "Weight" to "90", "ReqLevel" to "70")
            )
        ),
        SqlTableDefinition(
            tableName = "ZONE_INFO",
            description = "Map geometry pointers, SMD filename, and coordinate boundaries.",
            primaryKey = "ZoneNum (SMALLINT)",
            rowCount = 24,
            sampleColumns = listOf("ZoneNum", "strZoneName", "SMDFile", "MinLevel", "MaxLevel", "IsPvP"),
            sampleRows = listOf(
                mapOf("ZoneNum" to "21", "strZoneName" to "Colony Zone (Ronark Land)", "SMDFile" to "battlezone.smd", "MinLevel" to "70", "MaxLevel" to "83", "IsPvP" to "YES"),
                mapOf("ZoneNum" to "1", "strZoneName" to "Moradon", "SMDFile" to "Moradon.smd", "MinLevel" to "1", "MaxLevel" to "83", "IsPvP" to "NO"),
                mapOf("ZoneNum" to "11", "strZoneName" to "El Morad Castle", "SMDFile" to "elmorad.smd", "MinLevel" to "1", "MaxLevel" to "83", "IsPvP" to "NO")
            )
        )
    )
}
