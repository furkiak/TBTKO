package com.example.ui.main

import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
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
import com.example.data.*
import com.example.ui.screens.*
import com.example.ui.theme.*

enum class AppDestination(val title: String, val icon: androidx.compose.ui.graphics.vector.ImageVector) {
    SERVER("Server", Icons.Default.Dns),
    AURION("Aurion", Icons.Default.Speed),
    TEXTURES("Textures", Icons.Default.Palette),
    SQL_FIREBASE("SQL & MSC", Icons.Default.Storage),
    GEMINI_MCP("Gemini AI", Icons.Default.AutoAwesome),
    WORLD_QUESTS("World", Icons.Default.Map)
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(
    repository: KnightOnlineRepository = remember { KnightOnlineRepository() },
    authRepository: FirebaseAuthRepository = remember { FirebaseAuthRepository() },
    sqlRepository: FirestoreSqlRepository = remember { FirestoreSqlRepository() },
    geminiRepository: GeminiDesignerRepository = remember { GeminiDesignerRepository() },
    modifier: Modifier = Modifier
) {
    var currentDestination by remember { mutableStateOf(AppDestination.SERVER) }
    var showAuthDrawer by remember { mutableStateOf(false) }
    val authState by authRepository.authState.collectAsState()
    val metrics by repository.metrics.collectAsState()
    val aurionConfig by repository.aurionConfig.collectAsState()

    Scaffold(
        modifier = modifier.fillMaxSize(),
        containerColor = BackgroundDark,
        topBar = {
            TopAppBar(
                title = {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Box(
                            modifier = Modifier
                                .size(34.dp)
                                .clip(RoundedCornerShape(8.dp))
                                .background(GoldContainer),
                            contentAlignment = Alignment.Center
                        ) {
                            Icon(Icons.Default.Shield, contentDescription = null, tint = GoldPrimary, modifier = Modifier.size(20.dp))
                        }
                        Spacer(modifier = Modifier.width(10.dp))
                        Column {
                            Text(
                                text = "KNIGHT ONLINE",
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Black,
                                color = GoldPrimary,
                                letterSpacing = 1.sp
                            )
                            Text(
                                text = "AREKOLO • Aurion 60 TPS",
                                style = MaterialTheme.typography.labelSmall,
                                fontFamily = FontFamily.Monospace,
                                color = TextMuted,
                                fontSize = 10.sp
                            )
                        }
                    }
                },
                actions = {
                    // Online count & TPS Pill
                    Box(
                        modifier = Modifier
                            .clip(RoundedCornerShape(12.dp))
                            .background(SurfaceDark)
                            .border(1.dp, OutlineDark, RoundedCornerShape(12.dp))
                            .padding(horizontal = 8.dp, vertical = 4.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(modifier = Modifier.size(8.dp).clip(CircleShape).background(SuccessEmerald))
                            Spacer(modifier = Modifier.width(6.dp))
                            Text(
                                text = "${metrics.totalPlayers} | ${aurionConfig.modernCombatTickRate}Hz",
                                fontFamily = FontFamily.Monospace,
                                fontSize = 11.sp,
                                color = TextPrimary
                            )
                        }
                    }

                    Spacer(modifier = Modifier.width(6.dp))

                    // User Account Avatar button
                    IconButton(
                        onClick = { showAuthDrawer = !showAuthDrawer },
                        modifier = Modifier.testTag("auth_drawer_toggle")
                    ) {
                        val iconColor = when (authState) {
                            is AuthState.Authenticated -> SuccessEmerald
                            is AuthState.Loading -> WarningAmber
                            is AuthState.Unauthenticated -> TextSecondary
                        }
                        Icon(
                            imageVector = Icons.Default.AccountCircle,
                            contentDescription = "User Profile",
                            tint = iconColor
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = SurfaceDark
                )
            )
        },
        bottomBar = {
            NavigationBar(
                containerColor = SurfaceDark,
                tonalElevation = 8.dp,
                modifier = Modifier
                    .fillMaxWidth()
                    .windowInsetsPadding(WindowInsets.navigationBars)
                    .testTag("bottom_nav_bar")
            ) {
                AppDestination.values().forEach { destination ->
                    val isSelected = currentDestination == destination
                    NavigationBarItem(
                        selected = isSelected,
                        onClick = { currentDestination = destination },
                        icon = {
                            Icon(
                                imageVector = destination.icon,
                                contentDescription = destination.title,
                                modifier = Modifier.size(22.dp)
                            )
                        },
                        label = {
                            Text(
                                text = destination.title,
                                fontSize = 10.sp,
                                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                            )
                        },
                        colors = NavigationBarItemDefaults.colors(
                            selectedIconColor = GoldPrimary,
                            selectedTextColor = GoldPrimary,
                            unselectedIconColor = TextSecondary,
                            unselectedTextColor = TextSecondary,
                            indicatorColor = GoldContainer
                        ),
                        modifier = Modifier.testTag("nav_${destination.name.lowercase()}")
                    )
                }
            }
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            // Collapsible Auth Gate
            AnimatedVisibility(visible = showAuthDrawer) {
                Box(modifier = Modifier.padding(16.dp)) {
                    AuthGateScreen(authRepository = authRepository)
                }
            }

            // Screen Content
            Box(modifier = Modifier.weight(1f)) {
                when (currentDestination) {
                    AppDestination.SERVER -> ServerDashboardScreen(repository = repository)
                    AppDestination.AURION -> AurionLogicScreen(repository = repository)
                    AppDestination.TEXTURES -> TextureRemasterScreen(repository = repository)
                    AppDestination.SQL_FIREBASE -> SqlFirebaseScreen(repository = sqlRepository)
                    AppDestination.GEMINI_MCP -> GeminiMcpScreen(repository = geminiRepository)
                    AppDestination.WORLD_QUESTS -> WorldZonesScreen(repository = repository)
                }
            }
        }
    }
}
