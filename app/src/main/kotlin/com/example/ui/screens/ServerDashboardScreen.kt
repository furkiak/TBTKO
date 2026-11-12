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
import com.example.data.KnightOnlineRepository
import com.example.data.model.*
import com.example.ui.theme.*

@Composable
fun ServerDashboardScreen(
    repository: KnightOnlineRepository,
    modifier: Modifier = Modifier
) {
    val nodes by repository.serverNodes.collectAsState()
    val metrics by repository.metrics.collectAsState()
    val logs by repository.logs.collectAsState()
    val aurionConfig by repository.aurionConfig.collectAsState()

    var consoleInput by remember { mutableStateOf("") }
    var selectedLogFilter by remember { mutableStateOf<LogLevel?>(null) }

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Telemetry Summary Banner
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(20.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, GoldPrimary.copy(alpha = 0.4f), RoundedCornerShape(20.dp))
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
                                    .size(10.dp)
                                    .clip(CircleShape)
                                    .background(SuccessEmerald)
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "AREKOLO SERVER CLUSTER",
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = GoldPrimary,
                                letterSpacing = 1.sp
                            )
                        }

                        // Aurion Modern 60 TPS Badge
                        Box(
                            modifier = Modifier
                                .clip(RoundedCornerShape(8.dp))
                                .background(AurionPurpleContainer)
                                .padding(horizontal = 8.dp, vertical = 4.dp)
                        ) {
                            Text(
                                text = "AURION ${aurionConfig.modernCombatTickRate} TPS",
                                style = MaterialTheme.typography.labelSmall,
                                color = AurionPurple,
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(14.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        MetricItem("Online", "${metrics.totalPlayers}", "K: ${metrics.karusCount} | E: ${metrics.elmoCount}", GoldPrimary)
                        MetricItem("Uptime", "${metrics.uptimeMinutes}m", "Cluster Alive", TextPrimary)
                        MetricItem("Zones", "${metrics.activeZoneCount}", "4,320 Monsters", ElmoBlue)
                        MetricItem("Engine", "60 Hz", "0-Copy Ring", SuccessEmerald)
                    }

                    Spacer(modifier = Modifier.height(14.dp))

                    // Cluster Actions
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Button(
                            onClick = { repository.restartCluster() },
                            modifier = Modifier
                                .weight(1f)
                                .height(42.dp)
                                .testTag("restart_cluster_button"),
                            colors = ButtonDefaults.buttonColors(containerColor = SurfaceVariantDark),
                            shape = RoundedCornerShape(10.dp)
                        ) {
                            Icon(Icons.Default.Refresh, contentDescription = null, modifier = Modifier.size(18.dp), tint = GoldPrimary)
                            Spacer(modifier = Modifier.width(6.dp))
                            Text("Restart Cluster", fontSize = 12.sp, color = TextPrimary)
                        }

                        Button(
                            onClick = { repository.executeConsoleCommand("/aurion_sync") },
                            modifier = Modifier
                                .weight(1f)
                                .height(42.dp)
                                .testTag("sync_shards_button"),
                            colors = ButtonDefaults.buttonColors(containerColor = AurionPurpleContainer),
                            shape = RoundedCornerShape(10.dp)
                        ) {
                            Icon(Icons.Default.Sync, contentDescription = null, modifier = Modifier.size(18.dp), tint = AurionPurple)
                            Spacer(modifier = Modifier.width(6.dp))
                            Text("Aurion Sync", fontSize = 12.sp, color = Color.White)
                        }
                    }
                }
            }
        }

        // Server Nodes
        item {
            Text(
                text = "Server Subsystems (ODBC & Socket Architecture)",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = TextPrimary
            )
        }

        items(nodes) { node ->
            ServerNodeCard(
                node = node,
                onToggleStatus = { repository.toggleServerNode(node.id) }
            )
        }

        // Interactive Console Terminal
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = Color(0xFF070B12)),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, OutlineDark, RoundedCornerShape(16.dp))
            ) {
                Column(modifier = Modifier.padding(14.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(Icons.Default.Terminal, contentDescription = null, tint = GoldPrimary, modifier = Modifier.size(20.dp))
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Server Management Console",
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = TextPrimary
                            )
                        }
                        Text(
                            text = "Admin Port 20000",
                            style = MaterialTheme.typography.labelSmall,
                            color = TextMuted
                        )
                    }

                    Spacer(modifier = Modifier.height(10.dp))

                    // Quick Command Chips
                    LazyRow(
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        val quickCommands = listOf("/help", "/tps 60", "/spawn Felankor", "/drop_boost", "/weather rain", "/clear_logs")
                        items(quickCommands) { cmd ->
                            Box(
                                modifier = Modifier
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(SurfaceVariantDark)
                                    .clickable {
                                        repository.executeConsoleCommand(cmd)
                                    }
                                    .padding(horizontal = 10.dp, vertical = 6.dp)
                            ) {
                                Text(
                                    text = cmd,
                                    style = MaterialTheme.typography.labelSmall,
                                    fontFamily = FontFamily.Monospace,
                                    color = GoldPrimary
                                )
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(10.dp))

                    // Command Input Field
                    OutlinedTextField(
                        value = consoleInput,
                        onValueChange = { consoleInput = it },
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag("console_input_field"),
                        placeholder = { Text("Enter command (e.g., /spawn Felankor, /tps 60)...", color = TextMuted, fontSize = 12.sp) },
                        trailingIcon = {
                            IconButton(
                                onClick = {
                                    if (consoleInput.isNotBlank()) {
                                        repository.executeConsoleCommand(consoleInput)
                                        consoleInput = ""
                                    }
                                },
                                modifier = Modifier.testTag("console_submit_button")
                            ) {
                                Icon(Icons.Default.Send, contentDescription = "Send", tint = GoldPrimary)
                            }
                        },
                        keyboardOptions = KeyboardOptions(imeAction = ImeAction.Send),
                        keyboardActions = KeyboardActions(onSend = {
                            if (consoleInput.isNotBlank()) {
                                repository.executeConsoleCommand(consoleInput)
                                consoleInput = ""
                            }
                        }),
                        shape = RoundedCornerShape(12.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = GoldPrimary,
                            unfocusedBorderColor = OutlineDark,
                            focusedTextColor = TextPrimary,
                            unfocusedTextColor = TextPrimary
                        ),
                        singleLine = true
                    )
                }
            }
        }

        // Live Log Stream
        item {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = "Live Server Telemetry & Event Stream",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )

                TextButton(onClick = { repository.executeConsoleCommand("/clear_logs") }) {
                    Text("Clear", color = TextSecondary, fontSize = 12.sp)
                }
            }
        }

        // Filter Chips
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                val filters = listOf(null to "All", LogLevel.INFO to "Info", LogLevel.AURION to "Aurion", LogLevel.COMBAT to "Combat", LogLevel.ANVIL to "Anvil", LogLevel.PACKET to "Packets")
                items(filters) { (level, label) ->
                    val isSelected = selectedLogFilter == level
                    FilterChip(
                        selected = isSelected,
                        onClick = { selectedLogFilter = level },
                        label = { Text(label, fontSize = 11.sp) },
                        colors = FilterChipDefaults.filterChipColors(
                            selectedContainerColor = GoldContainer,
                            selectedLabelColor = GoldPrimary
                        )
                    )
                }
            }
        }

        // Log Items
        val filteredLogs = if (selectedLogFilter == null) logs else logs.filter { it.level == selectedLogFilter }
        items(filteredLogs.take(25)) { log ->
            LogStreamItem(log = log)
        }
    }
}

@Composable
private fun MetricItem(label: String, value: String, subtext: String, highlightColor: Color) {
    Column {
        Text(text = label, style = MaterialTheme.typography.labelSmall, color = TextSecondary)
        Text(text = value, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold, color = highlightColor)
        Text(text = subtext, style = MaterialTheme.typography.labelSmall, color = TextMuted, fontSize = 10.sp)
    }
}

@Composable
private fun ServerNodeCard(node: ServerNode, onToggleStatus: () -> Unit) {
    val isRunning = node.status == ServerStatus.RUNNING

    Card(
        colors = CardDefaults.cardColors(containerColor = SurfaceDark),
        shape = RoundedCornerShape(16.dp),
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, if (isRunning) OutlineDark else DangerRed.copy(alpha = 0.5f), RoundedCornerShape(16.dp))
    ) {
        Column(modifier = Modifier.padding(14.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(
                        modifier = Modifier
                            .size(10.dp)
                            .clip(CircleShape)
                            .background(if (isRunning) SuccessEmerald else DangerRed)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Column {
                        Text(
                            text = node.name,
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold,
                            color = TextPrimary
                        )
                        Text(
                            text = "Port ${node.port} • ${node.description}",
                            style = MaterialTheme.typography.bodySmall,
                            color = TextSecondary,
                            fontSize = 11.sp
                        )
                    }
                }

                Switch(
                    checked = isRunning,
                    onCheckedChange = { onToggleStatus() },
                    modifier = Modifier.testTag("toggle_node_${node.id}"),
                    colors = SwitchDefaults.colors(
                        checkedThumbColor = GoldPrimary,
                        checkedTrackColor = GoldContainer
                    )
                )
            }

            Spacer(modifier = Modifier.height(10.dp))

            // Stats row
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(SurfaceVariantDark, RoundedCornerShape(10.dp))
                    .padding(horizontal = 12.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = "Tick: ${String.format(java.util.Locale.US, "%.1f", node.tps)} / ${node.targetTps.toInt()} TPS",
                    fontFamily = FontFamily.Monospace,
                    fontSize = 11.sp,
                    color = if (node.tps >= 55f) SuccessEmerald else WarningAmber
                )
                Text(
                    text = "Lat: ${String.format(java.util.Locale.US, "%.1f", node.latencyMs)} ms",
                    fontFamily = FontFamily.Monospace,
                    fontSize = 11.sp,
                    color = TextPrimary
                )
                Text(
                    text = "RAM: ${node.memoryMb} MB",
                    fontFamily = FontFamily.Monospace,
                    fontSize = 11.sp,
                    color = TextSecondary
                )
                Text(
                    text = "${node.packetsPerSec} pkt/s",
                    fontFamily = FontFamily.Monospace,
                    fontSize = 11.sp,
                    color = ElmoBlue
                )
            }
        }
    }
}

@Composable
private fun LogStreamItem(log: ServerLogEntry) {
    val levelColor = when (log.level) {
        LogLevel.INFO -> TextSecondary
        LogLevel.WARN -> WarningAmber
        LogLevel.COMBAT -> KarusRed
        LogLevel.AURION -> AurionPurple
        LogLevel.ANVIL -> GoldPrimary
        LogLevel.PACKET -> ElmoBlue
    }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(8.dp))
            .background(Color(0xFF070B12))
            .padding(horizontal = 10.dp, vertical = 6.dp),
        verticalAlignment = Alignment.Top
    ) {
        Text(
            text = log.timestamp,
            fontFamily = FontFamily.Monospace,
            fontSize = 11.sp,
            color = TextMuted,
            modifier = Modifier.width(62.dp)
        )
        Box(
            modifier = Modifier
                .clip(RoundedCornerShape(4.dp))
                .background(levelColor.copy(alpha = 0.15f))
                .padding(horizontal = 6.dp, vertical = 2.dp)
        ) {
            Text(
                text = log.level.name,
                fontFamily = FontFamily.Monospace,
                fontSize = 9.sp,
                fontWeight = FontWeight.Bold,
                color = levelColor
            )
        }
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = "[${log.source}] ${log.message}",
            fontFamily = FontFamily.Monospace,
            fontSize = 11.sp,
            color = TextPrimary,
            modifier = Modifier.weight(1f)
        )
    }
}
