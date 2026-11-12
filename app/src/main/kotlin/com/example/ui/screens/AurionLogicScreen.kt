package com.example.ui.screens

import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
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
import com.example.data.KnightOnlineRepository
import com.example.data.model.CharacterClass
import com.example.ui.theme.*

@Composable
fun AurionLogicScreen(
    repository: KnightOnlineRepository,
    modifier: Modifier = Modifier
) {
    val aurionConfig by repository.aurionConfig.collectAsState()
    val lastCombatResult by repository.lastCombatResult.collectAsState()
    val dropResults by repository.dropResults.collectAsState()

    var attackerClass by remember { mutableStateOf(CharacterClass.WARRIOR) }
    var defenderClass by remember { mutableStateOf(CharacterClass.ROGUE) }
    var selectedSkill by remember { mutableStateOf("Hell Blade (Lv 80)") }

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Aurion Overview Banner
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
                                Icon(Icons.Default.Speed, contentDescription = null, tint = AurionPurple)
                            }
                            Spacer(modifier = Modifier.width(10.dp))
                            Column {
                                Text(
                                    text = "AURION GAME LOGIC ENGINE",
                                    style = MaterialTheme.typography.titleSmall,
                                    fontWeight = FontWeight.Bold,
                                    color = TextPrimary
                                )
                                Text(
                                    text = "Modernized 60 TPS Microservice Architecture",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = TextSecondary,
                                    fontSize = 11.sp
                                )
                            }
                        }

                        Box(
                            modifier = Modifier
                                .clip(RoundedCornerShape(8.dp))
                                .background(SuccessEmeraldContainer)
                                .padding(horizontal = 8.dp, vertical = 4.dp)
                        ) {
                            Text(
                                text = "ACTIVE",
                                style = MaterialTheme.typography.labelSmall,
                                color = SuccessEmerald,
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(14.dp))

                    Text(
                        text = "The Aurion Engine replaces the legacy 2004 C++ Winsock loop with zero-copy async ring buffers, dynamic drop balancing, sub-tick lag compensation, and smart mob behavior trees.",
                        style = MaterialTheme.typography.bodySmall,
                        color = TextPrimary
                    )
                }
            }
        }

        // Feature Toggles
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text(
                        text = "Aurion Engine Feature Flags",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold,
                        color = GoldPrimary
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    EngineToggleRow(
                        title = "Zero-Copy Memory Ring Buffers",
                        subtitle = "Sub-millisecond packet routing without buffer copying",
                        checked = aurionConfig.zeroCopyBuffersEnabled,
                        onCheckedChange = { chk ->
                            repository.updateAurionConfig { it.copy(zeroCopyBuffersEnabled = chk) }
                        }
                    )

                    Divider(color = OutlineDark, modifier = Modifier.padding(vertical = 8.dp))

                    EngineToggleRow(
                        title = "Dynamic Loot & Drop Balancer",
                        subtitle = "Real-time drop matrix adjustment preventing inflation",
                        checked = aurionConfig.dynamicDropBalancer,
                        onCheckedChange = { chk ->
                            repository.updateAurionConfig { it.copy(dynamicDropBalancer = chk) }
                        }
                    )

                    Divider(color = OutlineDark, modifier = Modifier.padding(vertical = 8.dp))

                    EngineToggleRow(
                        title = "Sub-Tick Combat Lag Compensation",
                        subtitle = "Server-side rollback for hit verification at 60 FPS",
                        checked = aurionConfig.subTickLagCompensation,
                        onCheckedChange = { chk ->
                            repository.updateAurionConfig { it.copy(subTickLagCompensation = chk) }
                        }
                    )

                    Divider(color = OutlineDark, modifier = Modifier.padding(vertical = 8.dp))

                    EngineToggleRow(
                        title = "Smart Mob Behavior Trees (FSM 2.0)",
                        subtitle = "Replaces static aggro loops with tactical combat AI",
                        checked = aurionConfig.smartBehaviorTrees,
                        onCheckedChange = { chk ->
                            repository.updateAurionConfig { it.copy(smartBehaviorTrees = chk) }
                        }
                    )
                }
            }
        }

        // Interactive Combat Calculator
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = Color(0xFF0F172A)),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, OutlineDark, RoundedCornerShape(16.dp))
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.SportsKabaddi, contentDescription = null, tint = KarusRed, modifier = Modifier.size(20.dp))
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "Aurion Combat Damage Simulator",
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold,
                            color = TextPrimary
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    // Attacker Selector
                    Text("Attacker Class:", style = MaterialTheme.typography.labelSmall, color = TextSecondary)
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp)
                    ) {
                        CharacterClass.values().take(3).forEach { cls ->
                            FilterChip(
                                selected = attackerClass == cls,
                                onClick = {
                                    attackerClass = cls
                                    selectedSkill = when (cls) {
                                        CharacterClass.WARRIOR -> "Hell Blade (Lv 80)"
                                        CharacterClass.ROGUE -> "Spike (Lv 55)"
                                        CharacterClass.MAGICIAN -> "Nova (Lv 60)"
                                        CharacterClass.PRIEST -> "Judgement (Lv 70)"
                                        CharacterClass.KURIAN -> "Rush (Lv 75)"
                                    }
                                },
                                label = { Text(cls.name, fontSize = 11.sp) }
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(8.dp))

                    // Defender Selector
                    Text("Defender Class:", style = MaterialTheme.typography.labelSmall, color = TextSecondary)
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp)
                    ) {
                        CharacterClass.values().takeLast(3).forEach { cls ->
                            FilterChip(
                                selected = defenderClass == cls,
                                onClick = { defenderClass = cls },
                                label = { Text(cls.name, fontSize = 11.sp) }
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(10.dp))

                    Button(
                        onClick = { repository.simulateCombat(attackerClass, defenderClass, selectedSkill) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(44.dp)
                            .testTag("simulate_combat_button"),
                        colors = ButtonDefaults.buttonColors(containerColor = KarusRed),
                        shape = RoundedCornerShape(10.dp)
                    ) {
                        Icon(Icons.Default.FlashOn, contentDescription = null, modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Calculate Aurion Damage Tick", fontWeight = FontWeight.Bold, fontSize = 12.sp)
                    }

                    lastCombatResult?.let { res ->
                        Spacer(modifier = Modifier.height(10.dp))
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clip(RoundedCornerShape(8.dp))
                                .background(Color(0xFF1E293B))
                                .padding(10.dp)
                        ) {
                            Text(
                                text = res,
                                fontFamily = FontFamily.Monospace,
                                fontSize = 11.sp,
                                color = GoldPrimary
                            )
                        }
                    }
                }
            }
        }

        // Dynamic Drop Roll Simulator
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(Icons.Default.Casino, contentDescription = null, tint = SuccessEmerald, modifier = Modifier.size(20.dp))
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Dynamic Loot & Drop Table Roll",
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = TextPrimary
                            )
                        }
                        Text(
                            text = "${aurionConfig.dropLuckMultiplier}x Luck",
                            fontFamily = FontFamily.Monospace,
                            fontSize = 11.sp,
                            color = SuccessEmerald
                        )
                    }

                    Spacer(modifier = Modifier.height(10.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Button(
                            onClick = { repository.rollLootDrop("Felankor (Boss)") },
                            modifier = Modifier
                                .weight(1f)
                                .height(40.dp)
                                .testTag("roll_boss_drop_button"),
                            colors = ButtonDefaults.buttonColors(containerColor = GoldContainer),
                            shape = RoundedCornerShape(8.dp)
                        ) {
                            Text("Kill Boss (Felankor)", fontSize = 11.sp, color = GoldPrimary)
                        }

                        Button(
                            onClick = { repository.rollLootDrop("Dark Mare (Eslant)") },
                            modifier = Modifier
                                .weight(1f)
                                .height(40.dp)
                                .testTag("roll_mob_drop_button"),
                            colors = ButtonDefaults.buttonColors(containerColor = SurfaceVariantDark),
                            shape = RoundedCornerShape(8.dp)
                        ) {
                            Text("Kill Dark Mare", fontSize = 11.sp, color = TextPrimary)
                        }
                    }

                    if (dropResults.isNotEmpty()) {
                        Spacer(modifier = Modifier.height(10.dp))
                        dropResults.take(4).forEach { drop ->
                            Text(
                                text = drop,
                                fontFamily = FontFamily.Monospace,
                                fontSize = 11.sp,
                                color = TextPrimary,
                                modifier = Modifier.padding(vertical = 2.dp)
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun EngineToggleRow(
    title: String,
    subtitle: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(text = title, style = MaterialTheme.typography.bodyMedium, fontWeight = FontWeight.SemiBold, color = TextPrimary)
            Text(text = subtitle, style = MaterialTheme.typography.bodySmall, color = TextSecondary, fontSize = 11.sp)
        }
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange,
            colors = SwitchDefaults.colors(
                checkedThumbColor = AurionPurple,
                checkedTrackColor = AurionPurpleContainer
            )
        )
    }
}
