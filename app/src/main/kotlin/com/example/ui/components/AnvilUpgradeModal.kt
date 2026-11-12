package com.example.ui.components

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
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
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.example.data.model.*
import com.example.ui.theme.*
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

@Composable
fun AnvilUpgradeModal(
    selectedItem: EquipmentItem?,
    availableItems: List<EquipmentItem>,
    selectedScroll: UpgradeScroll,
    onSelectItem: (EquipmentItem) -> Unit,
    onSelectScroll: (UpgradeScroll) -> Unit,
    onPerformUpgrade: () -> UpgradeResult?,
    onDismiss: () -> Unit
) {
    var isForging by remember { mutableStateOf(false) }
    var latestResult by remember { mutableStateOf<UpgradeResult?>(null) }
    val scope = rememberCoroutineScope()

    Dialog(
        onDismissRequest = { if (!isForging) onDismiss() },
        properties = DialogProperties(usePlatformDefaultWidth = false)
    ) {
        Surface(
            modifier = Modifier
                .fillMaxWidth(0.95f)
                .fillMaxHeight(0.92f)
                .clip(RoundedCornerShape(24.dp))
                .border(2.dp, GoldPrimary.copy(alpha = 0.7f), RoundedCornerShape(24.dp)),
            color = BackgroundDark
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(20.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Box(
                            modifier = Modifier
                                .size(40.dp)
                                .background(GoldContainer, CircleShape),
                            contentAlignment = Alignment.Center
                        ) {
                            Icon(
                                imageVector = Icons.Default.Hardware,
                                contentDescription = "Magic Anvil",
                                tint = GoldPrimary
                            )
                        }
                        Spacer(modifier = Modifier.width(12.dp))
                        Column {
                            Text(
                                text = "Magic Anvil of Moradon",
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = GoldPrimary
                            )
                            Text(
                                text = "High-Class Weapon & Armor Tempering",
                                style = MaterialTheme.typography.bodySmall,
                                color = TextSecondary
                            )
                        }
                    }
                    IconButton(
                        onClick = onDismiss,
                        enabled = !isForging,
                        modifier = Modifier.testTag("anvil_close_button")
                    ) {
                        Icon(Icons.Default.Close, contentDescription = "Close", tint = TextSecondary)
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Item Selector Chips
                Text(
                    text = "Select Equipment to Forge:",
                    style = MaterialTheme.typography.labelMedium,
                    color = TextSecondary,
                    modifier = Modifier.align(Alignment.Start)
                )
                Spacer(modifier = Modifier.height(6.dp))
                LazyRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    items(availableItems) { item ->
                        val isSelected = selectedItem?.id == item.id
                        Box(
                            modifier = Modifier
                                .clip(RoundedCornerShape(10.dp))
                                .background(if (isSelected) GoldContainer else SurfaceVariantDark)
                                .border(1.dp, if (isSelected) GoldPrimary else OutlineDark, RoundedCornerShape(10.dp))
                                .clickable(enabled = !isForging) {
                                    latestResult = null
                                    onSelectItem(item)
                                }
                                .padding(horizontal = 12.dp, vertical = 8.dp)
                                .testTag("select_item_${item.id}")
                        ) {
                            Text(
                                text = "${item.name} +${item.grade}",
                                style = MaterialTheme.typography.bodySmall,
                                color = if (isSelected) GoldPrimary else TextPrimary,
                                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Center Anvil Forge Canvas
                if (selectedItem != null) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .weight(1f)
                    ) {
                        WeaponGlowCanvas(
                            item = selectedItem,
                            isModernTexture = true,
                            glowMultiplier = if (isForging) 1.8f else 1.0f,
                            modifier = Modifier.fillMaxSize()
                        )

                        // Forging Sparks & Animation Overlay
                        if (isForging) {
                            Box(
                                modifier = Modifier
                                    .fillMaxSize()
                                    .background(Color(0xAA000000)),
                                contentAlignment = Alignment.Center
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    CircularProgressIndicator(
                                        color = GoldPrimary,
                                        modifier = Modifier.size(56.dp),
                                        strokeWidth = 4.dp
                                    )
                                    Spacer(modifier = Modifier.height(16.dp))
                                    Text(
                                        text = "STRIKING THE ANVIL...",
                                        style = MaterialTheme.typography.titleMedium,
                                        fontWeight = FontWeight.Black,
                                        color = GoldPrimary,
                                        letterSpacing = 2.sp
                                    )
                                    Text(
                                        text = "Tempering molecular lattice with blessed embers",
                                        style = MaterialTheme.typography.bodySmall,
                                        color = TextSecondary
                                    )
                                }
                            }
                        }

                        // Latest Result Banner
                        latestResult?.let { res ->
                            val isSuccess = res.outcome == UpgradeOutcome.SUCCESS
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .align(Alignment.BottomCenter)
                                    .background(
                                        brush = Brush.verticalGradient(
                                            listOf(Color.Transparent, if (isSuccess) Color(0xDD064E3B) else Color(0xDD7F1D1D))
                                        )
                                    )
                                    .padding(16.dp),
                                contentAlignment = Alignment.Center
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text(
                                        text = if (isSuccess) "UPGRADE SUCCESSFUL! +${res.newGrade}" else "UPGRADE FAILED!",
                                        style = MaterialTheme.typography.titleLarge,
                                        fontWeight = FontWeight.Black,
                                        color = if (isSuccess) SuccessEmerald else DangerRed
                                    )
                                    Text(
                                        text = res.message,
                                        style = MaterialTheme.typography.bodySmall,
                                        color = TextPrimary,
                                        textAlign = TextAlign.Center
                                    )
                                }
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Scroll Selection
                Text(
                    text = "Select Upgrade Scroll / Relic:",
                    style = MaterialTheme.typography.labelMedium,
                    color = TextSecondary,
                    modifier = Modifier.align(Alignment.Start)
                )
                Spacer(modifier = Modifier.height(6.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    UpgradeScroll.values().forEach { scroll ->
                        val isSelected = selectedScroll == scroll
                        Box(
                            modifier = Modifier
                                .weight(1f)
                                .clip(RoundedCornerShape(12.dp))
                                .background(if (isSelected) GoldContainer else SurfaceVariantDark)
                                .border(1.5.dp, if (isSelected) GoldPrimary else OutlineDark, RoundedCornerShape(12.dp))
                                .clickable(enabled = !isForging) { onSelectScroll(scroll) }
                                .padding(8.dp)
                                .testTag("select_scroll_${scroll.name}"),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(
                                    text = when (scroll) {
                                        UpgradeScroll.BLESSED_UPGRADE_SCROLL -> "BUS"
                                        UpgradeScroll.SHADOW_PIECE -> "Shadow"
                                        UpgradeScroll.TRINA_PIECE -> "Trina"
                                        UpgradeScroll.REBIRTH_SCROLL -> "Rebirth"
                                    },
                                    style = MaterialTheme.typography.labelMedium,
                                    fontWeight = FontWeight.Bold,
                                    color = if (isSelected) GoldPrimary else TextPrimary
                                )
                                Text(
                                    text = if (scroll.bonusRate > 0) "+${(scroll.bonusRate * 100).toInt()}%" else "Normal",
                                    style = MaterialTheme.typography.labelSmall,
                                    color = if (scroll.bonusRate > 0) SuccessEmerald else TextSecondary,
                                    fontSize = 10.sp
                                )
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Action Button: Forge Item
                val targetGrade = (selectedItem?.grade ?: 0) + 1
                Button(
                    onClick = {
                        if (!isForging && selectedItem != null) {
                            isForging = true
                            latestResult = null
                            scope.launch {
                                delay(2200) // Suspenseful forging delay
                                latestResult = onPerformUpgrade()
                                isForging = false
                            }
                        }
                    },
                    enabled = !isForging && selectedItem != null && (selectedItem.grade < 10),
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(52.dp)
                        .testTag("anvil_forge_button"),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = GoldPrimary,
                        contentColor = Color.Black
                    ),
                    shape = RoundedCornerShape(14.dp)
                ) {
                    Icon(Icons.Default.Bolt, contentDescription = null)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = if (isForging) "FORGING BLADE..." else "TEMPER WEAPON TO +$targetGrade",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                }
            }
        }
    }
}
