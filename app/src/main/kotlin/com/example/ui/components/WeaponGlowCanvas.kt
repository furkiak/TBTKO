package com.example.ui.components

import androidx.compose.animation.core.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.data.model.EquipmentItem
import com.example.ui.theme.*
import kotlin.math.cos
import kotlin.math.sin

@Composable
fun WeaponGlowCanvas(
    item: EquipmentItem,
    isModernTexture: Boolean,
    glowMultiplier: Float = 1.0f,
    modifier: Modifier = Modifier
) {
    val infiniteTransition = rememberInfiniteTransition(label = "glowPulse")
    val pulse by infiniteTransition.animateFloat(
        initialValue = 0.85f,
        targetValue = 1.15f,
        animationSpec = infiniteRepeatable(
            animation = tween(1200, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ),
        label = "pulseAnim"
    )

    val sparkRotation by infiniteTransition.animateFloat(
        initialValue = 0f,
        targetValue = 360f,
        animationSpec = infiniteRepeatable(
            animation = tween(4000, easing = LinearEasing),
            repeatMode = RepeatMode.Restart
        ),
        label = "sparkRotationAnim"
    )

    // Knight Online weapon glow color by grade
    val glowColor = when (item.grade) {
        0, 1, 2, 3 -> Color.Transparent
        4, 5, 6 -> GlowYellow
        7 -> GlowBlue
        8 -> GlowGreen
        9 -> GlowGold
        else -> GlowPurple
    }

    Box(
        modifier = modifier
            .clip(RoundedCornerShape(16.dp))
            .background(Color(0xFF070B12))
            .border(1.dp, if (item.grade >= 7) glowColor.copy(alpha = 0.6f) else OutlineDark, RoundedCornerShape(16.dp))
            .padding(16.dp),
        contentAlignment = Alignment.Center
    ) {
        Canvas(modifier = Modifier.fillMaxSize()) {
            val center = Offset(size.width / 2f, size.height / 2f)
            val baseRadius = size.minDimension * 0.38f

            // 1. Ambient background radial glow
            if (item.grade >= 4 && glowColor != Color.Transparent) {
                drawCircle(
                    brush = Brush.radialGradient(
                        colors = listOf(
                            glowColor.copy(alpha = 0.35f * glowMultiplier * pulse),
                            glowColor.copy(alpha = 0.12f * glowMultiplier),
                            Color.Transparent
                        ),
                        center = center,
                        radius = baseRadius * 1.5f
                    ),
                    radius = baseRadius * 1.5f,
                    center = center
                )
            }

            // 2. Draw Weapon Silhouette based on category
            drawStylizedWeapon(
                center = center,
                category = item.category,
                grade = item.grade,
                isModern = isModernTexture,
                glowColor = glowColor,
                pulse = pulse
            )

            // 3. Electric spark discharge for +8, +9, +10 weapons
            if (item.grade >= 8) {
                val sparkCount = if (item.grade >= 10) 8 else 5
                for (i in 0 until sparkCount) {
                    val angle = (sparkRotation + (i * 360f / sparkCount)) * (Math.PI / 180.0)
                    val dist = baseRadius * (0.6f + 0.3f * sin(sparkRotation * 0.05f + i))
                    val sparkOffset = Offset(
                        center.x + (dist * cos(angle)).toFloat(),
                        center.y + (dist * sin(angle)).toFloat()
                    )
                    drawCircle(
                        color = if (item.grade >= 10) Color(0xFFE9D5FF) else glowColor,
                        radius = 3.5f * pulse,
                        center = sparkOffset
                    )
                }
            }
        }

        // Overlay Badge
        Column(
            modifier = Modifier
                .align(Alignment.TopStart)
                .background(Color(0x99000000), RoundedCornerShape(8.dp))
                .padding(horizontal = 8.dp, vertical = 4.dp)
        ) {
            Text(
                text = "${item.name} +${item.grade}",
                style = MaterialTheme.typography.titleSmall,
                color = if (item.grade >= 7) glowColor else TextPrimary
            )
            Text(
                text = if (isModernTexture) "4K PBR Remaster" else "2004 Legacy 512p",
                style = MaterialTheme.typography.labelSmall,
                color = if (isModernTexture) SuccessEmerald else TextSecondary,
                fontSize = 10.sp
            )
        }

        if (item.grade >= 7) {
            Text(
                text = when (item.grade) {
                    7 -> "LIGHTNING ARC (+7 BLUE)"
                    8 -> "POISON EMERALD (+8 GREEN)"
                    9 -> "INFERNAL FIRE (+9 GOLD)"
                    else -> "VOID LIGHTNING (+10 PURPLE)"
                },
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .background(Color(0xCC0E131F), RoundedCornerShape(6.dp))
                    .padding(horizontal = 8.dp, vertical = 3.dp),
                style = MaterialTheme.typography.labelSmall,
                color = glowColor,
                fontSize = 10.sp
            )
        }
    }
}

private fun DrawScope.drawStylizedWeapon(
    center: Offset,
    category: String,
    grade: Int,
    isModern: Boolean,
    glowColor: Color,
    pulse: Float
) {
    val steelColor = if (isModern) Color(0xFFCBD5E1) else Color(0xFF64748B)
    val goldAccent = if (isModern) Color(0xFFFBBF24) else Color(0xFF94A3B8)

    when {
        category.contains("Axe", ignoreCase = true) -> {
            // Raptor: Long Polearm with double serrated axe head
            val haftStart = Offset(center.x - 70f, center.y + 100f)
            val haftEnd = Offset(center.x + 70f, center.y - 100f)

            // Shaft
            drawLine(
                color = Color(0xFF451A03),
                start = haftStart,
                end = haftEnd,
                strokeWidth = 9f
            )

            // Axe blade head
            val bladePath = Path().apply {
                moveTo(center.x + 40f, center.y - 60f)
                cubicTo(
                    center.x + 100f, center.y - 120f,
                    center.x + 120f, center.y - 30f,
                    center.x + 60f, center.y - 20f
                )
                lineTo(center.x + 30f, center.y - 45f)
                close()
            }
            drawPath(bladePath, color = steelColor)

            if (grade >= 4) {
                drawPath(
                    bladePath,
                    color = glowColor.copy(alpha = 0.8f),
                    style = Stroke(width = 4f * pulse)
                )
            }
        }
        category.contains("Dagger", ignoreCase = true) -> {
            // Shard: Twin curved assassin blade
            val bladePath = Path().apply {
                moveTo(center.x - 20f, center.y + 60f)
                lineTo(center.x - 10f, center.y - 30f)
                lineTo(center.x + 30f, center.y - 90f)
                lineTo(center.x + 15f, center.y - 15f)
                lineTo(center.x + 10f, center.y + 60f)
                close()
            }
            drawPath(bladePath, color = steelColor)

            // Guard & Pommel
            drawLine(
                color = goldAccent,
                start = Offset(center.x - 35f, center.y + 60f),
                end = Offset(center.x + 25f, center.y + 60f),
                strokeWidth = 8f
            )

            if (grade >= 4) {
                drawPath(
                    bladePath,
                    color = glowColor.copy(alpha = 0.85f),
                    style = Stroke(width = 3.5f * pulse)
                )
            }
        }
        else -> {
            // Iron Impact / Hell Breaker: Massive Flanged Warhammer
            val handleStart = Offset(center.x - 50f, center.y + 90f)
            val handleEnd = Offset(center.x + 50f, center.y - 70f)
            drawLine(
                color = Color(0xFF1E293B),
                start = handleStart,
                end = handleEnd,
                strokeWidth = 12f
            )

            val headCenter = Offset(center.x + 40f, center.y - 60f)
            drawCircle(
                color = steelColor,
                radius = 32f,
                center = headCenter
            )

            if (grade >= 4) {
                drawCircle(
                    color = glowColor.copy(alpha = 0.75f),
                    radius = 36f * pulse,
                    center = headCenter,
                    style = Stroke(width = 4f)
                )
            }
        }
    }
}
