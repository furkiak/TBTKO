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
import com.example.data.model.ClanRank
import com.example.data.model.LuaQuest
import com.example.data.model.Nation
import com.example.ui.theme.*

@Composable
fun DatabaseQuestsScreen(
    repository: KnightOnlineRepository,
    modifier: Modifier = Modifier
) {
    val quests by repository.quests.collectAsState()
    val clans by repository.clans.collectAsState()

    var selectedTab by remember { mutableStateOf(0) } // 0: Quests (Lua), 1: Knights Clan Rankings
    var selectedQuest by remember { mutableStateOf<LuaQuest?>(quests.firstOrNull()) }

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Tab Selector
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
                    text = { Text("Lua Quests (${quests.size})", fontSize = 12.sp, fontWeight = FontWeight.Bold) },
                    icon = { Icon(Icons.Default.Code, contentDescription = null, modifier = Modifier.size(16.dp)) }
                )
                Tab(
                    selected = selectedTab == 1,
                    onClick = { selectedTab = 1 },
                    text = { Text("Knights Clan Ranks", fontSize = 12.sp, fontWeight = FontWeight.Bold) },
                    icon = { Icon(Icons.Default.Shield, contentDescription = null, modifier = Modifier.size(16.dp)) }
                )
            }
        }

        if (selectedTab == 0) {
            item {
                Text(
                    text = "Lua Quest Engine & NPC Handlers",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )
                Text(
                    text = "Parsed directly from repository's /Map Guest Client Paketi/Quests/*.lua",
                    style = MaterialTheme.typography.bodySmall,
                    color = TextSecondary,
                    fontSize = 11.sp
                )
            }

            items(quests) { quest ->
                val isSelected = selectedQuest?.questId == quest.questId
                Card(
                    colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                    shape = RoundedCornerShape(16.dp),
                    modifier = Modifier
                        .fillMaxWidth()
                        .border(1.5.dp, if (isSelected) GoldPrimary else OutlineDark, RoundedCornerShape(16.dp))
                        .clickable { selectedQuest = quest }
                        .testTag("quest_card_${quest.questId}")
                ) {
                    Column(modifier = Modifier.padding(14.dp)) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Column(modifier = Modifier.weight(1f)) {
                                Text(
                                    text = quest.name,
                                    style = MaterialTheme.typography.titleSmall,
                                    fontWeight = FontWeight.Bold,
                                    color = if (isSelected) GoldPrimary else TextPrimary
                                )
                                Text(
                                    text = "NPC: ${quest.npcName} • ${quest.zoneName}",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = TextSecondary,
                                    fontSize = 11.sp
                                )
                            }
                            Box(
                                modifier = Modifier
                                    .clip(RoundedCornerShape(6.dp))
                                    .background(SurfaceVariantDark)
                                    .padding(horizontal = 8.dp, vertical = 4.dp)
                            ) {
                                Text(
                                    text = "ID: ${quest.questId}",
                                    fontFamily = FontFamily.Monospace,
                                    fontSize = 10.sp,
                                    color = GoldPrimary
                                )
                            }
                        }

                        Spacer(modifier = Modifier.height(8.dp))

                        Text(
                            text = "Objective: ${quest.objective}",
                            style = MaterialTheme.typography.bodySmall,
                            color = TextPrimary,
                            fontSize = 11.sp
                        )

                        Spacer(modifier = Modifier.height(8.dp))

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .background(SurfaceVariantDark, RoundedCornerShape(8.dp))
                                .padding(horizontal = 10.dp, vertical = 6.dp),
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text(text = "EXP: +${quest.rewardExp}", fontFamily = FontFamily.Monospace, fontSize = 11.sp, color = SuccessEmerald)
                            Text(text = "Noah: +${quest.rewardCoins}", fontFamily = FontFamily.Monospace, fontSize = 11.sp, color = GoldPrimary)
                            Text(text = quest.rewardItem, fontFamily = FontFamily.Monospace, fontSize = 11.sp, color = ElmoBlue)
                        }

                        // Expanded Lua Code Preview
                        if (isSelected) {
                            Spacer(modifier = Modifier.height(10.dp))
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(Color(0xFF070B12))
                                    .padding(10.dp)
                            ) {
                                Column {
                                    Text(
                                        text = "-- ${quest.luaFileName} (Lua 5.2 VM)",
                                        fontFamily = FontFamily.Monospace,
                                        fontSize = 10.sp,
                                        color = TextMuted
                                    )
                                    Spacer(modifier = Modifier.height(4.dp))
                                    Text(
                                        text = quest.sampleLuaSnippet,
                                        fontFamily = FontFamily.Monospace,
                                        fontSize = 11.sp,
                                        color = SuccessEmerald
                                    )
                                }
                            }
                        }
                    }
                }
            }
        } else {
            // Knights Clan Rankings
            item {
                Text(
                    text = "Knights Clan National Point Standings",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )
            }

            items(clans) { clan ->
                ClanRankCard(clan = clan)
            }
        }
    }
}

@Composable
private fun ClanRankCard(clan: ClanRank) {
    val isKarus = clan.nation == Nation.KARUS
    Card(
        colors = CardDefaults.cardColors(containerColor = SurfaceDark),
        shape = RoundedCornerShape(14.dp),
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, OutlineDark, RoundedCornerShape(14.dp))
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier
                    .size(32.dp)
                    .clip(CircleShape)
                    .background(if (clan.rank <= 2) GoldContainer else SurfaceVariantDark),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = "#${clan.rank}",
                    fontWeight = FontWeight.Bold,
                    fontSize = 12.sp,
                    color = if (clan.rank <= 2) GoldPrimary else TextSecondary
                )
            }

            Spacer(modifier = Modifier.width(12.dp))

            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = clan.name,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = TextPrimary
                )
                Text(
                    text = "Leader: ${clan.leader} • Grade: ${clan.grade} • ${clan.members}/50",
                    style = MaterialTheme.typography.bodySmall,
                    color = TextSecondary,
                    fontSize = 11.sp
                )
            }

            Column(horizontalAlignment = Alignment.End) {
                Text(
                    text = "${clan.nationalPoints} NP",
                    fontFamily = FontFamily.Monospace,
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Bold,
                    color = if (isKarus) KarusRed else ElmoBlue
                )
                Text(
                    text = if (isKarus) "Karus Horde" else "El Morad",
                    style = MaterialTheme.typography.labelSmall,
                    color = TextMuted,
                    fontSize = 10.sp
                )
            }
        }
    }
}
