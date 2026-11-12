package com.example.ui.screens

import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.data.FirestoreSqlRepository
import com.example.data.SqlTableDefinition
import com.example.data.MscSequenceStep
import com.example.ui.theme.*
import kotlinx.coroutines.launch

@Composable
fun SqlFirebaseScreen(
    repository: FirestoreSqlRepository,
    modifier: Modifier = Modifier
) {
    val tables by repository.sqlTables.collectAsState()
    val mscSteps by repository.mscSteps.collectAsState()
    val syncStatus by repository.syncStatus.collectAsState()

    var selectedTable by remember { mutableStateOf<SqlTableDefinition>(tables.first()) }
    var selectedTab by remember { mutableStateOf(0) } // 0: MSC Diagram, 1: SQL Tables & Sync
    val scope = rememberCoroutineScope()

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Title & Header Banner
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(20.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, ElmoBlue.copy(alpha = 0.5f), RoundedCornerShape(20.dp))
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
                                    .background(ElmoBlueContainer, CircleShape),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(Icons.Default.Storage, contentDescription = null, tint = ElmoBlue)
                            }
                            Spacer(modifier = Modifier.width(10.dp))
                            Column {
                                Text(
                                    text = "SQL & FIREBASE MSC VISUALIZER",
                                    style = MaterialTheme.typography.titleSmall,
                                    fontWeight = FontWeight.Bold,
                                    color = TextPrimary
                                )
                                Text(
                                    text = "kn_online ODBC ↔ Cloud Firestore Realtime Sync",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = TextSecondary,
                                    fontSize = 11.sp
                                )
                            }
                        }

                        // Sync Status Pill
                        Box(
                            modifier = Modifier
                                .clip(RoundedCornerShape(8.dp))
                                .background(if (syncStatus.error != null) DangerRed.copy(alpha = 0.2f) else SuccessEmeraldContainer)
                                .padding(horizontal = 8.dp, vertical = 4.dp)
                        ) {
                            Text(
                                text = if (syncStatus.isSyncing) "SYNCING..." else if (syncStatus.error != null) "AUTH REQUIRED" else "FIRESTORE CONNECTED",
                                style = MaterialTheme.typography.labelSmall,
                                color = if (syncStatus.error != null) DangerRed else SuccessEmerald,
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(14.dp))

                    // Sync action row
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column {
                            Text(text = "Last Synced: ${syncStatus.lastSyncTime}", style = MaterialTheme.typography.bodySmall, color = TextMuted, fontSize = 11.sp)
                            Text(text = "Collection: ${syncStatus.activeCollection} (${syncStatus.syncedDocumentCount} docs)", style = MaterialTheme.typography.bodySmall, color = TextSecondary, fontSize = 11.sp)
                        }

                        Button(
                            onClick = {
                                scope.launch {
                                    repository.syncSqlDatabaseToFirestore(selectedTable.tableName)
                                }
                            },
                            enabled = !syncStatus.isSyncing,
                            modifier = Modifier.testTag("sync_firestore_button"),
                            colors = ButtonDefaults.buttonColors(containerColor = ElmoBlue),
                            shape = RoundedCornerShape(10.dp)
                        ) {
                            Icon(Icons.Default.CloudSync, contentDescription = null, modifier = Modifier.size(16.dp))
                            Spacer(modifier = Modifier.width(6.dp))
                            Text(if (syncStatus.isSyncing) "Syncing..." else "Sync Table", fontSize = 12.sp)
                        }
                    }

                    if (syncStatus.error != null) {
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = syncStatus.error ?: "",
                            style = MaterialTheme.typography.labelSmall,
                            color = DangerRed
                        )
                    }
                }
            }
        }

        // Section Tabs
        item {
            TabRow(
                selectedTabIndex = selectedTab,
                containerColor = SurfaceDark,
                contentColor = GoldPrimary,
                modifier = Modifier.clip(RoundedCornerShape(12.dp))
            ) {
                Tab(
                    selected = selectedTab == 0,
                    onClick = { selectedTab = 0 },
                    text = { Text("Message Sequence Chart (MSC)", fontSize = 12.sp, fontWeight = FontWeight.Bold) },
                    icon = { Icon(Icons.Default.Timeline, contentDescription = null, modifier = Modifier.size(16.dp)) }
                )
                Tab(
                    selected = selectedTab == 1,
                    onClick = { selectedTab = 1 },
                    text = { Text("SQL Table Inspector", fontSize = 12.sp, fontWeight = FontWeight.Bold) },
                    icon = { Icon(Icons.Default.TableChart, contentDescription = null, modifier = Modifier.size(16.dp)) }
                )
            }
        }

        if (selectedTab == 0) {
            // Message Sequence Chart (MSC) View
            item {
                Text(
                    text = "Client-Server-ODBC-Firestore Transaction Flow",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )
                Text(
                    text = "Zero-copy packets, thread context switches, and cloud database replication",
                    style = MaterialTheme.typography.bodySmall,
                    color = TextSecondary,
                    fontSize = 11.sp
                )
            }

            items(mscSteps) { step ->
                MscStepCard(step = step)
            }
        } else {
            // SQL Tables View
            item {
                Text(
                    text = "Knight Online ODBC Database Tables",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )
            }

            // Table Chips
            item {
                LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    items(tables) { table ->
                        val isSelected = selectedTable.tableName == table.tableName
                        Box(
                            modifier = Modifier
                                .clip(RoundedCornerShape(10.dp))
                                .background(if (isSelected) ElmoBlueContainer else SurfaceVariantDark)
                                .border(1.dp, if (isSelected) ElmoBlue else OutlineDark, RoundedCornerShape(10.dp))
                                .clickable { selectedTable = table }
                                .padding(horizontal = 12.dp, vertical = 8.dp)
                                .testTag("select_sql_table_${table.tableName}")
                        ) {
                            Text(
                                text = "${table.tableName} (${table.rowCount})",
                                style = MaterialTheme.typography.labelMedium,
                                color = if (isSelected) ElmoBlue else TextPrimary,
                                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                            )
                        }
                    }
                }
            }

            // Selected Table Details
            item {
                Card(
                    colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                    shape = RoundedCornerShape(16.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Column {
                                Text(
                                    text = "Table: ${selectedTable.tableName}",
                                    style = MaterialTheme.typography.titleMedium,
                                    fontWeight = FontWeight.Bold,
                                    color = GoldPrimary
                                )
                                Text(
                                    text = selectedTable.description,
                                    style = MaterialTheme.typography.bodySmall,
                                    color = TextSecondary
                                )
                            }
                            Box(
                                modifier = Modifier
                                    .clip(RoundedCornerShape(6.dp))
                                    .background(SurfaceVariantDark)
                                    .padding(horizontal = 8.dp, vertical = 4.dp)
                            ) {
                                Text(
                                    text = "PK: ${selectedTable.primaryKey}",
                                    fontFamily = FontFamily.Monospace,
                                    fontSize = 10.sp,
                                    color = TextMuted
                                )
                            }
                        }

                        Spacer(modifier = Modifier.height(14.dp))

                        Text(
                            text = "Sample Records (Mapped to Firestore Document Schema):",
                            style = MaterialTheme.typography.labelSmall,
                            color = TextSecondary
                        )

                        Spacer(modifier = Modifier.height(8.dp))

                        selectedTable.sampleRows.forEachIndexed { idx, row ->
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(vertical = 4.dp)
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(Color(0xFF090D15))
                                    .padding(10.dp)
                            ) {
                                Column {
                                    Text(
                                        text = "Record #${idx + 1}",
                                        fontFamily = FontFamily.Monospace,
                                        fontSize = 10.sp,
                                        color = GoldPrimary
                                    )
                                    Spacer(modifier = Modifier.height(4.dp))
                                    row.forEach { (col, value) ->
                                        Row(
                                            modifier = Modifier.fillMaxWidth(),
                                            horizontalArrangement = Arrangement.SpaceBetween
                                        ) {
                                            Text(text = "$col:", fontFamily = FontFamily.Monospace, fontSize = 11.sp, color = TextMuted)
                                            Text(text = value, fontFamily = FontFamily.Monospace, fontSize = 11.sp, color = TextPrimary)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun MscStepCard(step: MscSequenceStep) {
    Card(
        colors = CardDefaults.cardColors(containerColor = Color(0xFF090D14)),
        shape = RoundedCornerShape(12.dp),
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, OutlineDark, RoundedCornerShape(12.dp))
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Step Number Badge
            Box(
                modifier = Modifier
                    .size(28.dp)
                    .clip(CircleShape)
                    .background(ElmoBlueContainer),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = "${step.stepNumber}",
                    fontWeight = FontWeight.Bold,
                    fontSize = 12.sp,
                    color = ElmoBlue
                )
            }

            Spacer(modifier = Modifier.width(12.dp))

            Column(modifier = Modifier.weight(1f)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text(
                        text = "${step.fromNode} → ${step.toNode}",
                        style = MaterialTheme.typography.bodySmall,
                        fontWeight = FontWeight.Bold,
                        color = GoldPrimary
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Box(
                        modifier = Modifier
                            .clip(RoundedCornerShape(4.dp))
                            .background(SurfaceVariantDark)
                            .padding(horizontal = 4.dp, vertical = 2.dp)
                    ) {
                        Text(
                            text = step.opcode,
                            fontFamily = FontFamily.Monospace,
                            fontSize = 9.sp,
                            color = TextPrimary
                        )
                    }
                }
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = step.label,
                    style = MaterialTheme.typography.bodySmall,
                    color = TextSecondary,
                    fontSize = 11.sp
                )
            }

            Column(horizontalAlignment = Alignment.End) {
                Text(
                    text = "${step.latencyMs} ms",
                    fontFamily = FontFamily.Monospace,
                    fontSize = 11.sp,
                    color = SuccessEmerald
                )
                Text(
                    text = if (step.isAurionZeroCopy) "0-Copy" else "Winsock",
                    style = MaterialTheme.typography.labelSmall,
                    fontSize = 9.sp,
                    color = TextMuted
                )
            }
        }
    }
}
