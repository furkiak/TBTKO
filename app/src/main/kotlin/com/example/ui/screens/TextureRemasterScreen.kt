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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.data.KnightOnlineRepository
import com.example.data.model.EquipmentItem
import com.example.data.model.TexturePack
import com.example.ui.components.AnvilUpgradeModal
import com.example.ui.components.WeaponGlowCanvas
import com.example.ui.theme.*

@Composable
fun TextureRemasterScreen(
    repository: KnightOnlineRepository,
    modifier: Modifier = Modifier
) {
    val texturePacks by repository.texturePacks.collectAsState()
    val isModernTexture by repository.isModernTextureActive.collectAsState()
    val glowIntensity by repository.glowIntensity.collectAsState()
    val roughness by repository.roughnessSetting.collectAsState()
    val metallic by repository.metallicSetting.collectAsState()
    val inventory by repository.inventory.collectAsState()
    val selectedItem by repository.selectedAnvilItem.collectAsState()
    val selectedScroll by repository.selectedScroll.collectAsState()

    var showAnvilModal by remember { mutableStateOf(false) }

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Hero Header
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(20.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, GoldPrimary.copy(alpha = 0.5f), RoundedCornerShape(20.dp))
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
                                    .background(GoldContainer, CircleShape),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(Icons.Default.Palette, contentDescription = null, tint = GoldPrimary)
                            }
                            Spacer(modifier = Modifier.width(10.dp))
                            Column {
                                Text(
                                    text = "HD TEXTURE & SHADER REMASTER",
                                    style = MaterialTheme.typography.titleSmall,
                                    fontWeight = FontWeight.Bold,
                                    color = TextPrimary
                                )
                                Text(
                                    text = "4K PBR Materials & Volumetric Glow Shaders",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = TextSecondary,
                                    fontSize = 11.sp
                                )
                            }
                        }

                        Button(
                            onClick = { showAnvilModal = true },
                            modifier = Modifier
                                .height(38.dp)
                                .testTag("open_anvil_button"),
                            colors = ButtonDefaults.buttonColors(containerColor = GoldPrimary, contentColor = Color.Black),
                            shape = RoundedCornerShape(10.dp)
                        ) {
                            Icon(Icons.Default.Hardware, contentDescription = null, modifier = Modifier.size(16.dp))
                            Spacer(modifier = Modifier.width(6.dp))
                            Text("Open Anvil", fontSize = 11.sp, fontWeight = FontWeight.Bold)
                        }
                    }

                    Spacer(modifier = Modifier.height(14.dp))

                    Text(
                        text = "Modernizes classic 2004 256x256 textures into ultra-high-definition 4K PBR surfaces with realistic metallic reflections, normal micro-displacement, and animated weapon glow.",
                        style = MaterialTheme.typography.bodySmall,
                        color = TextPrimary
                    )
                }
            }
        }

        // Live Weapon Canvas & Glow Preview
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = Color(0xFF090D15)),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier
                    .fillMaxWidth()
                    .border(1.dp, OutlineDark, RoundedCornerShape(16.dp))
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "Real-Time Weapon Glow & Shaders",
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold,
                            color = TextPrimary
                        )

                        // 2004 vs 2026 Toggle
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Text(
                                text = if (isModernTexture) "4K PBR" else "2004 Legacy",
                                style = MaterialTheme.typography.labelSmall,
                                color = if (isModernTexture) SuccessEmerald else TextMuted,
                                fontWeight = FontWeight.Bold
                            )
                            Spacer(modifier = Modifier.width(6.dp))
                            Switch(
                                checked = isModernTexture,
                                onCheckedChange = { repository.setTextureComparisonMode(it) },
                                modifier = Modifier.testTag("toggle_modern_texture_switch"),
                                colors = SwitchDefaults.colors(
                                    checkedThumbColor = SuccessEmerald,
                                    checkedTrackColor = SuccessEmeraldContainer
                                )
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    if (selectedItem != null) {
                        WeaponGlowCanvas(
                            item = selectedItem!!,
                            isModernTexture = isModernTexture,
                            glowMultiplier = glowIntensity,
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(220.dp)
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    // Equipment Select Row
                    Text("Select Weapon to Inspect:", style = MaterialTheme.typography.labelSmall, color = TextSecondary)
                    Spacer(modifier = Modifier.height(6.dp))
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(inventory) { item ->
                            val isSel = selectedItem?.id == item.id
                            Box(
                                modifier = Modifier
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(if (isSel) GoldContainer else SurfaceVariantDark)
                                    .border(1.dp, if (isSel) GoldPrimary else OutlineDark, RoundedCornerShape(8.dp))
                                    .clickable { repository.selectAnvilItem(item) }
                                    .padding(horizontal = 10.dp, vertical = 6.dp)
                            ) {
                                Text(
                                    text = "${item.name} +${item.grade}",
                                    style = MaterialTheme.typography.labelSmall,
                                    color = if (isSel) GoldPrimary else TextPrimary,
                                    fontWeight = if (isSel) FontWeight.Bold else FontWeight.Normal
                                )
                            }
                        }
                    }
                }
            }
        }

        // PBR Shader Controls
        item {
            Card(
                colors = CardDefaults.cardColors(containerColor = SurfaceDark),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text(
                        text = "VRAM Shader & Lighting Controls",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold,
                        color = GoldPrimary
                    )

                    Spacer(modifier = Modifier.height(10.dp))

                    // Glow Multiplier
                    Text("Volumetric Bloom & Emission: ${String.format(java.util.Locale.US, "%.1f", glowIntensity)}x", style = MaterialTheme.typography.bodySmall, color = TextSecondary)
                    Slider(
                        value = glowIntensity,
                        onValueChange = { repository.updateShaderControls(it, roughness, metallic) },
                        valueRange = 0.5f..2.5f,
                        colors = SliderDefaults.colors(thumbColor = GoldPrimary, activeTrackColor = GoldPrimary)
                    )

                    // Roughness
                    Text("Surface Roughness: ${(roughness * 100).toInt()}%", style = MaterialTheme.typography.bodySmall, color = TextSecondary)
                    Slider(
                        value = roughness,
                        onValueChange = { repository.updateShaderControls(glowIntensity, it, metallic) },
                        valueRange = 0.1f..0.9f,
                        colors = SliderDefaults.colors(thumbColor = ElmoBlue, activeTrackColor = ElmoBlue)
                    )

                    // Metallic
                    Text("Metallic Sheen: ${(metallic * 100).toInt()}%", style = MaterialTheme.typography.bodySmall, color = TextSecondary)
                    Slider(
                        value = metallic,
                        onValueChange = { repository.updateShaderControls(glowIntensity, roughness, it) },
                        valueRange = 0.1f..1.0f,
                        colors = SliderDefaults.colors(thumbColor = AurionPurple, activeTrackColor = AurionPurple)
                    )
                }
            }
        }

        // Texture Packs List
        item {
            Text(
                text = "Installed HD Texture Packs (4K VRAM Cache):",
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Bold,
                color = TextPrimary
            )
        }

        items(texturePacks) { pack ->
            TexturePackCard(
                pack = pack,
                onToggle = { repository.toggleTexturePack(pack.id) }
            )
        }
    }

    // Magic Anvil Modal Dialog
    if (showAnvilModal) {
        AnvilUpgradeModal(
            selectedItem = selectedItem,
            availableItems = inventory,
            selectedScroll = selectedScroll,
            onSelectItem = { repository.selectAnvilItem(it) },
            onSelectScroll = { repository.selectScroll(it) },
            onPerformUpgrade = { repository.performAnvilUpgrade() },
            onDismiss = { showAnvilModal = false }
        )
    }
}

@Composable
private fun TexturePackCard(pack: TexturePack, onToggle: () -> Unit) {
    Card(
        colors = CardDefaults.cardColors(containerColor = SurfaceDark),
        shape = RoundedCornerShape(16.dp),
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, if (pack.isEnabled) OutlineDark else Color.Transparent, RoundedCornerShape(16.dp))
    ) {
        Column(modifier = Modifier.padding(14.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = pack.name,
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold,
                        color = if (pack.isEnabled) GoldPrimary else TextSecondary
                    )
                    Text(
                        text = "${pack.resolution} • ${pack.polyCountBoost}",
                        style = MaterialTheme.typography.bodySmall,
                        color = if (pack.isEnabled) SuccessEmerald else TextMuted,
                        fontSize = 11.sp
                    )
                }

                Switch(
                    checked = pack.isEnabled,
                    onCheckedChange = { onToggle() },
                    colors = SwitchDefaults.colors(
                        checkedThumbColor = GoldPrimary,
                        checkedTrackColor = GoldContainer
                    )
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = pack.description,
                style = MaterialTheme.typography.bodySmall,
                color = TextSecondary,
                fontSize = 11.sp
            )

            Spacer(modifier = Modifier.height(8.dp))

            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(RoundedCornerShape(8.dp))
                    .background(Color(0xFF070B12))
                    .padding(8.dp)
            ) {
                Column {
                    Text(text = "Legacy: ${pack.comparisonBefore}", style = MaterialTheme.typography.labelSmall, color = TextMuted, fontSize = 10.sp)
                    Spacer(modifier = Modifier.height(2.dp))
                    Text(text = "Remaster: ${pack.comparisonAfter}", style = MaterialTheme.typography.labelSmall, color = TextPrimary, fontSize = 10.sp)
                }
            }
        }
    }
}
