package com.example.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val KnightColorScheme = darkColorScheme(
    primary = GoldPrimary,
    onPrimary = Color(0xFF1F1300),
    primaryContainer = GoldContainer,
    onPrimaryContainer = OnGoldContainer,

    secondary = ElmoBlue,
    onSecondary = Color(0xFF001E47),
    secondaryContainer = ElmoBlueContainer,
    onSecondaryContainer = OnElmoBlueContainer,

    tertiary = KarusRed,
    onTertiary = Color(0xFF450000),
    tertiaryContainer = KarusRedContainer,
    onTertiaryContainer = OnKarusRedContainer,

    background = BackgroundDark,
    onBackground = TextPrimary,

    surface = SurfaceDark,
    onSurface = TextPrimary,
    surfaceVariant = SurfaceVariantDark,
    onSurfaceVariant = TextSecondary,
    surfaceContainer = SurfaceContainerDark,
    surfaceContainerHigh = SurfaceContainerHighDark,

    outline = OutlineDark,
    outlineVariant = OutlineVariantDark,

    error = DangerRed,
    onError = Color.White
)

@Composable
fun KnightOnlineTheme(
    darkTheme: Boolean = true, // Knight Online server suite looks iconic in dark fantasy theme
    dynamicColor: Boolean = false,
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = KnightColorScheme,
        typography = Typography,
        content = content
    )
}
