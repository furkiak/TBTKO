package com.example.data

import com.example.data.model.*
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlin.random.Random

class KnightOnlineRepository(
    private val scope: CoroutineScope = CoroutineScope(Dispatchers.Default)
) {
    private val timeFormat = SimpleDateFormat("HH:mm:ss", Locale.US)

    // Server Nodes
    private val _serverNodes = MutableStateFlow<List<ServerNode>>(createInitialNodes())
    val serverNodes: StateFlow<List<ServerNode>> = _serverNodes.asStateFlow()

    // Server Metrics
    private val _metrics = MutableStateFlow(ServerMetrics())
    val metrics: StateFlow<ServerMetrics> = _metrics.asStateFlow()

    // Logs
    private val _logs = MutableStateFlow<List<ServerLogEntry>>(createInitialLogs())
    val logs: StateFlow<List<ServerLogEntry>> = _logs.asStateFlow()

    // Aurion Config
    private val _aurionConfig = MutableStateFlow(AurionConfig())
    val aurionConfig: StateFlow<AurionConfig> = _aurionConfig.asStateFlow()

    // Inventory & Equipment
    private val _inventory = MutableStateFlow<List<EquipmentItem>>(createInitialItems())
    val inventory: StateFlow<List<EquipmentItem>> = _inventory.asStateFlow()

    // Selected Item for Anvil
    private val _selectedAnvilItem = MutableStateFlow<EquipmentItem?>(createInitialItems().first())
    val selectedAnvilItem: StateFlow<EquipmentItem?> = _selectedAnvilItem.asStateFlow()

    // Selected Scroll
    private val _selectedScroll = MutableStateFlow(UpgradeScroll.BLESSED_UPGRADE_SCROLL)
    val selectedScroll: StateFlow<UpgradeScroll> = _selectedScroll.asStateFlow()

    // Upgrade History
    private val _upgradeHistory = MutableStateFlow<List<UpgradeResult>>(emptyList())
    val upgradeHistory: StateFlow<List<UpgradeResult>> = _upgradeHistory.asStateFlow()

    // Texture Packs
    private val _texturePacks = MutableStateFlow<List<TexturePack>>(createInitialTexturePacks())
    val texturePacks: StateFlow<List<TexturePack>> = _texturePacks.asStateFlow()

    // Active Texture Customization
    private val _glowIntensity = MutableStateFlow(1.2f)
    val glowIntensity: StateFlow<Float> = _glowIntensity.asStateFlow()

    private val _roughnessSetting = MutableStateFlow(0.35f)
    val roughnessSetting: StateFlow<Float> = _roughnessSetting.asStateFlow()

    private val _metallicSetting = MutableStateFlow(0.85f)
    val metallicSetting: StateFlow<Float> = _metallicSetting.asStateFlow()

    private val _isModernTextureActive = MutableStateFlow(true)
    val isModernTextureActive: StateFlow<Boolean> = _isModernTextureActive.asStateFlow()

    // Zones
    private val _zones = MutableStateFlow<List<ZoneMap>>(createInitialZones())
    val zones: StateFlow<List<ZoneMap>> = _zones.asStateFlow()

    // Quests
    private val _quests = MutableStateFlow<List<LuaQuest>>(createInitialQuests())
    val quests: StateFlow<List<LuaQuest>> = _quests.asStateFlow()

    // Clan Ranks
    private val _clans = MutableStateFlow<List<ClanRank>>(createInitialClans())
    val clans: StateFlow<List<ClanRank>> = _clans.asStateFlow()

    // Combat Simulation Result
    private val _lastCombatResult = MutableStateFlow<String?>(null)
    val lastCombatResult: StateFlow<String?> = _lastCombatResult.asStateFlow()

    // Drop Simulation History
    private val _dropResults = MutableStateFlow<List<String>>(emptyList())
    val dropResults: StateFlow<List<String>> = _dropResults.asStateFlow()

    init {
        startTelemetryLoop()
    }

    private fun startTelemetryLoop() {
        scope.launch {
            while (true) {
                delay(3000)
                updateTelemetryFluctuation()
            }
        }
    }

    private fun updateTelemetryFluctuation() {
        val config = _aurionConfig.value
        val targetTps = if (config.zeroCopyBuffersEnabled) 60f else 20f

        _serverNodes.update { nodes ->
            nodes.map { node ->
                if (node.status == ServerStatus.RUNNING) {
                    val jitter = (Random.nextFloat() * 1.2f) - 0.6f
                    val currentTps = (targetTps + jitter).coerceIn(15f, 60.5f)
                    val latency = if (config.zeroCopyBuffersEnabled) 0.6f + Random.nextFloat() * 0.4f else 32f + Random.nextFloat() * 12f
                    val packets = (node.packetsPerSec + Random.nextInt(-40, 45)).coerceAtLeast(100)
                    node.copy(
                        tps = currentTps,
                        latencyMs = latency,
                        packetsPerSec = packets
                    )
                } else node
            }
        }

        _metrics.update { m ->
            val playerDrift = Random.nextInt(-3, 4)
            val newTotal = (m.totalPlayers + playerDrift).coerceIn(1100, 2000)
            m.copy(
                totalPlayers = newTotal,
                karusCount = newTotal / 2 + Random.nextInt(-5, 5),
                elmoCount = newTotal - (newTotal / 2),
                uptimeMinutes = m.uptimeMinutes + 1
            )
        }
    }

    fun toggleServerNode(nodeId: String) {
        _serverNodes.update { nodes ->
            nodes.map { node ->
                if (node.id == nodeId) {
                    val nextStatus = if (node.status == ServerStatus.RUNNING) ServerStatus.STOPPED else ServerStatus.RUNNING
                    addLog(
                        LogLevel.INFO,
                        node.name,
                        if (nextStatus == ServerStatus.RUNNING) "Server node initialized & socket listening on port ${node.port}" else "Server node cleanly decommissioned on port ${node.port}"
                    )
                    node.copy(status = nextStatus)
                } else node
            }
        }
    }

    fun restartCluster() {
        scope.launch {
            addLog(LogLevel.WARN, "Cluster", "Broadcasting SIGTERM to LoginServer, AIServer, GameServer...")
            _serverNodes.update { nodes -> nodes.map { it.copy(status = ServerStatus.RESTARTING) } }
            delay(1200)
            _serverNodes.update { nodes -> nodes.map { it.copy(status = ServerStatus.RUNNING) } }
            addLog(LogLevel.AURION, "Aurion Cluster", "All nodes restarted with 0-copy network stack (Target: 60 TPS).")
        }
    }

    fun addLog(level: LogLevel, source: String, message: String) {
        val entry = ServerLogEntry(
            id = System.currentTimeMillis().toString() + "_" + Random.nextInt(100, 999),
            timestamp = timeFormat.format(Date()),
            level = level,
            source = source,
            message = message
        )
        _logs.update { (listOf(entry) + it).take(80) }
    }

    fun updateAurionConfig(update: (AurionConfig) -> AurionConfig) {
        _aurionConfig.update { old ->
            val newConfig = update(old)
            addLog(
                LogLevel.AURION,
                "AurionEngine",
                "Configuration updated: 0-Copy=${newConfig.zeroCopyBuffersEnabled}, 60TPS=${newConfig.modernCombatTickRate}Hz, DropLuck=${newConfig.dropLuckMultiplier}x"
            )
            newConfig
        }
    }

    fun selectAnvilItem(item: EquipmentItem) {
        _selectedAnvilItem.value = item
    }

    fun selectScroll(scroll: UpgradeScroll) {
        _selectedScroll.value = scroll
    }

    fun performAnvilUpgrade(): UpgradeResult? {
        val current = _selectedAnvilItem.value ?: return null
        val scroll = _selectedScroll.value
        val prevGrade = current.grade

        if (prevGrade >= 10) {
            addLog(LogLevel.ANVIL, "Anvil", "${current.name} is already maximum grade (+10)!")
            return null
        }

        // Authentic Knight Online base rates
        val baseSuccessRate: Float = when (prevGrade) {
            0 -> 1.00f
            1 -> 1.00f
            2 -> 1.00f
            3 -> 0.90f
            4 -> 0.75f
            5 -> 0.55f
            6 -> 0.30f
            7 -> 0.15f
            8 -> 0.05f
            9 -> 0.015f
            else -> 0.01f
        }

        // Apply scroll bonus and Aurion luck bonus
        val aurionBonus = if (_aurionConfig.value.dynamicDropBalancer) 0.05f else 0.0f
        val finalRate = (baseSuccessRate + scroll.bonusRate + aurionBonus).coerceIn(0.01f, 1.0f)
        val roll = Random.nextFloat()
        val isSuccess = roll <= finalRate

        val outcome = if (isSuccess) {
            UpgradeOutcome.SUCCESS
        } else {
            UpgradeOutcome.FAILED_DESTROYED
        }

        val updatedItem = if (isSuccess) {
            val newGrade = prevGrade + 1
            val apBoost = when {
                newGrade >= 8 -> 14
                newGrade >= 7 -> 10
                newGrade >= 5 -> 7
                else -> 4
            }
            val elementBoost = if (current.elemental != ElementalType.NONE) 10 else 0
            current.copy(
                grade = newGrade,
                attackPower = current.attackPower + apBoost,
                elementalDamage = current.elementalDamage + elementBoost
            )
        } else {
            // Reset to base item or destroy
            current.copy(grade = 0, attackPower = current.attackPower - (prevGrade * 8).coerceAtLeast(0))
        }

        val msg = if (isSuccess) {
            "ANVIL SUCCESS! [${current.name}] ascended from +$prevGrade to +${updatedItem.grade}! (Roll: ${(roll * 100).toInt()}% <= ${(finalRate * 100).toInt()}%)"
        } else {
            "ANVIL FAILED! [${current.name} +$prevGrade] was shattered into molten slag! (Roll: ${(roll * 100).toInt()}% > ${(finalRate * 100).toInt()}%)"
        }

        val result = UpgradeResult(
            previousGrade = prevGrade,
            newGrade = updatedItem.grade,
            item = updatedItem,
            scroll = scroll,
            outcome = outcome,
            calculatedRate = finalRate,
            roll = roll,
            message = msg,
            timestamp = timeFormat.format(Date())
        )

        _selectedAnvilItem.value = updatedItem
        _inventory.update { items ->
            items.map { if (it.id == current.id) updatedItem else it }
        }
        _upgradeHistory.update { (listOf(result) + it).take(20) }
        addLog(LogLevel.ANVIL, "Magic Anvil", msg)
        return result
    }

    fun toggleTexturePack(packId: String) {
        _texturePacks.update { list ->
            list.map { pack ->
                if (pack.id == packId) {
                    val toggled = !pack.isEnabled
                    addLog(LogLevel.INFO, "TextureEngine", "Texture pack '${pack.name}' ${if (toggled) "loaded in VRAM (4K PBR)" else "unloaded"}.")
                    pack.copy(isEnabled = toggled)
                } else pack
            }
        }
    }

    fun setTextureComparisonMode(isModern: Boolean) {
        _isModernTextureActive.value = isModern
    }

    fun updateShaderControls(glow: Float, roughness: Float, metallic: Float) {
        _glowIntensity.value = glow
        _roughnessSetting.value = roughness
        _metallicSetting.value = metallic
    }

    // Aurion Combat Simulator
    fun simulateCombat(attackerClass: CharacterClass, defenderClass: CharacterClass, skillName: String): String {
        val baseAp = when (attackerClass) {
            CharacterClass.WARRIOR -> 2450
            CharacterClass.ROGUE -> 2280
            CharacterClass.MAGICIAN -> 1920
            CharacterClass.PRIEST -> 1600
            CharacterClass.KURIAN -> 2100
        }
        val defAc = when (defenderClass) {
            CharacterClass.WARRIOR -> 1800
            CharacterClass.ROGUE -> 1250
            CharacterClass.MAGICIAN -> 980
            CharacterClass.PRIEST -> 1650
            CharacterClass.KURIAN -> 1450
        }

        val aurionMult = if (_aurionConfig.value.modernCombatTickRate == 60) 1.15f else 1.0f
        val rawDamage = (baseAp * 2.2f - (defAc * 0.75f)) * aurionMult
        val isCrit = Random.nextFloat() < 0.25f
        val finalDamage = (if (isCrit) rawDamage * 1.8f else rawDamage).toInt().coerceAtLeast(150)

        val result = "Aurion Combat Tick: [${attackerClass.displayName}] used '$skillName' against [${defenderClass.displayName}] -> $finalDamage DMG ${if (isCrit) "(CRITICAL HIT!)" else ""} [Mitigation: ${(defAc * 0.4f).toInt()}]"
        _lastCombatResult.value = result
        addLog(LogLevel.COMBAT, "AurionCombat", result)
        return result
    }

    // Aurion Drop Simulator
    fun rollLootDrop(monsterName: String): String {
        val drops = listOf(
            "Raptor (+1 High Class Unique)",
            "Shard (+1 High Class Dagger)",
            "Iron Impact (+1 Heavy Club)",
            "Chitin Shell Pauldron (+1 Exceptional)",
            "Gold Bar (100,000,000 Noah)",
            "Silver Gem (Bifrost Relic)",
            "Blue Treasure Chest",
            "Monster Stone (Dungeon Entry)"
        )
        val aurionLuck = _aurionConfig.value.dropLuckMultiplier
        val dropped = drops.random()
        val rollPct = String.format(Locale.US, "%.2f", (Random.nextFloat() * 100) / aurionLuck)
        val result = "Loot Dropped from $monsterName: $dropped (Roll: $rollPct% | Luck Multiplier: ${aurionLuck}x)"
        _dropResults.update { (listOf(result) + it).take(15) }
        addLog(LogLevel.AURION, "LootBalancer", result)
        return result
    }

    // Console Command Processor
    fun executeConsoleCommand(cmd: String): String {
        val trimmed = cmd.trim()
        val parts = trimmed.split(" ")
        val root = parts.firstOrNull()?.lowercase() ?: ""

        val response = when (root) {
            "/help" -> "Commands: /tps <20|60>, /spawn <monster>, /drop_boost, /aurion_sync, /weather <rain|snow|clear>, /anvil_rate, /clear_logs, /status"
            "/tps" -> {
                val rate = parts.getOrNull(1)?.toIntOrNull() ?: 60
                updateAurionConfig { it.copy(modernCombatTickRate = rate, zeroCopyBuffersEnabled = (rate == 60)) }
                "Server tick rate locked to ${rate} TPS."
            }
            "/spawn" -> {
                val mob = if (parts.size > 1) parts.drop(1).joinToString(" ") else "Felankor"
                addLog(LogLevel.INFO, "AIServer", "Dynamic NPC spawn: [$mob] respawned at Colony Zone bowl (X: 1024, Y: 1024)")
                "Spawned $mob at Colony Zone coordinates."
            }
            "/drop_boost" -> {
                updateAurionConfig { it.copy(dropLuckMultiplier = it.dropLuckMultiplier + 0.25f) }
                "Aurion Drop Rate multiplier boosted to ${_aurionConfig.value.dropLuckMultiplier}x!"
            }
            "/aurion_sync" -> {
                addLog(LogLevel.AURION, "AurionBridge", "Synchronized world state across 18 zone shards with sub-millisecond memory ring buffers.")
                "Aurion world state synchronized (0 dropped packets)."
            }
            "/weather" -> {
                val weather = parts.getOrNull(1) ?: "rain"
                addLog(LogLevel.INFO, "GameServer", "Environment weather changed to '$weather' across Moradon & Colony Zone.")
                "Weather changed to $weather."
            }
            "/clear_logs" -> {
                _logs.value = emptyList()
                "Logs flushed."
            }
            "/status" -> {
                val m = _metrics.value
                "Online: ${m.totalPlayers} (Karus: ${m.karusCount}, El Morad: ${m.elmoCount}) | Active Zones: ${m.activeZoneCount}"
            }
            else -> "Unknown command '$trimmed'. Type /help for available admin commands."
        }
        addLog(LogLevel.PACKET, "Console", "> $trimmed -> $response")
        return response
    }

    companion object {
        private fun createInitialNodes(): List<ServerNode> = listOf(
            ServerNode(
                id = "login_server",
                name = "LogInServer (v18xx)",
                description = "Account auth, version handshake, server list & character credential gate",
                port = 15100,
                status = ServerStatus.RUNNING,
                tps = 60.0f,
                latencyMs = 0.8f,
                memoryMb = 320,
                packetsPerSec = 1420
            ),
            ServerNode(
                id = "ai_server",
                name = "AIServer (Pathfinding)",
                description = "A* navmesh, monster aggro threads, room event triggers & NPC skill AI",
                port = 10020,
                status = ServerStatus.RUNNING,
                tps = 59.8f,
                latencyMs = 0.9f,
                memoryMb = 640,
                packetsPerSec = 3850
            ),
            ServerNode(
                id = "game_server",
                name = "GameServer (Zone Router)",
                description = "World physics, combat damage engine, trade, clan ranking & Anvil forge",
                port = 20000,
                status = ServerStatus.RUNNING,
                tps = 60.0f,
                latencyMs = 0.7f,
                memoryMb = 880,
                packetsPerSec = 8920
            ),
            ServerNode(
                id = "aurion_bridge",
                name = "Aurion Microservice Bridge",
                description = "Modernized zero-copy ring buffers, dynamic drop balancer & cross-realm sharding",
                port = 8080,
                status = ServerStatus.RUNNING,
                tps = 60.0f,
                latencyMs = 0.3f,
                memoryMb = 210,
                packetsPerSec = 12400
            )
        )

        private fun createInitialLogs(): List<ServerLogEntry> = listOf(
            ServerLogEntry("1", "12:00:01", LogLevel.INFO, "Cluster", "Knight Online Server Cluster booted. ODBC Connection pool active."),
            ServerLogEntry("2", "12:00:03", LogLevel.AURION, "AurionEngine", "Modernized memory ring buffers initialized. Zero-copy socket routing ENABLED."),
            ServerLogEntry("3", "12:00:10", LogLevel.INFO, "AIServer", "Loaded 4,320 monster spawn points across 18 zone SMD files."),
            ServerLogEntry("4", "12:01:15", LogLevel.PACKET, "GameServer", "Zone 21 (Colony Zone) loaded: 340 Karus vs 338 El Morad engaged in battle."),
            ServerLogEntry("5", "12:02:45", LogLevel.ANVIL, "Anvil", "Player 'xDeathBringer' upgraded [Raptor +7] to [+8] successfully! (Server broadcast emitted).")
        )

        private fun createInitialItems(): List<EquipmentItem> = listOf(
            EquipmentItem(
                id = 101,
                name = "Raptor",
                grade = 7,
                category = "Two-Handed Axe",
                attackPower = 187,
                defense = 0,
                requiredClass = CharacterClass.WARRIOR,
                weight = 80,
                durability = 14000,
                elemental = ElementalType.LIGHTNING,
                elementalDamage = 80,
                rarity = ItemRarity.UNIQUE,
                description = "The colossal axe of Karus chieftain. Emits pulsating lightning along its serrated edge."
            ),
            EquipmentItem(
                id = 102,
                name = "Shard",
                grade = 8,
                category = "Dagger",
                attackPower = 102,
                defense = 0,
                requiredClass = CharacterClass.ROGUE,
                weight = 25,
                durability = 12000,
                elemental = ElementalType.POISON,
                elementalDamage = 90,
                rarity = ItemRarity.UNIQUE,
                description = "Razor-sharp twin assassin dagger forged in the Delos catacombs with venomous sting."
            ),
            EquipmentItem(
                id = 103,
                name = "Iron Impact",
                grade = 7,
                category = "Two-Handed Club",
                attackPower = 182,
                defense = 0,
                requiredClass = CharacterClass.WARRIOR,
                weight = 90,
                durability = 15000,
                elemental = ElementalType.FLAME,
                elementalDamage = 75,
                rarity = ItemRarity.UNIQUE,
                description = "Massive spiked warhammer capable of pulverizing heavy dragon shields in a single blow."
            ),
            EquipmentItem(
                id = 104,
                name = "Mirage Dagger",
                grade = 6,
                category = "Dagger",
                attackPower = 91,
                defense = 0,
                requiredClass = CharacterClass.ROGUE,
                weight = 20,
                durability = 10000,
                elemental = ElementalType.LIGHTNING,
                elementalDamage = 60,
                rarity = ItemRarity.RARE,
                description = "Swift assassin blade shimmering with optical illusions."
            ),
            EquipmentItem(
                id = 105,
                name = "Hell Breaker",
                grade = 8,
                category = "Two-Handed Club",
                attackPower = 196,
                defense = 0,
                requiredClass = CharacterClass.PRIEST,
                weight = 85,
                durability = 16000,
                elemental = ElementalType.FLAME,
                elementalDamage = 95,
                rarity = ItemRarity.LEGENDARY,
                description = "Sacred flanged mace infused with primordial infernal fire for battle priests."
            ),
            EquipmentItem(
                id = 106,
                name = "Chitin Shell Pauldron",
                grade = 7,
                category = "Heavy Armor",
                attackPower = 0,
                defense = 142,
                requiredClass = CharacterClass.WARRIOR,
                weight = 70,
                durability = 18000,
                elemental = ElementalType.NONE,
                elementalDamage = 0,
                rarity = ItemRarity.UNIQUE,
                description = "Reinforced exoskeleton armor harvested from ancient chitin behemoths in Eslant."
            )
        )

        private fun createInitialTexturePacks(): List<TexturePack> = listOf(
            TexturePack(
                id = "hd_weapons",
                name = "4K PBR Weapons Remaster",
                category = "Weapons",
                resolution = "4K PBR Remaster",
                isEnabled = true,
                polyCountBoost = "8x Mesh Density (32k Triangles)",
                description = "Replaces low-res 2004 256x256 weapon textures with 4K physical based rendering, roughness, metallic sheen, and anisotropic reflections.",
                normalMapStrength = 1.2f,
                roughness = 0.25f,
                metallic = 0.90f,
                emissionGlow = 1.4f,
                comparisonBefore = "Pixelated 256x256 diffuse map with washed out highlights and low-poly blade bevels.",
                comparisonAfter = "Photorealistic high-tensile Damascus steel with micro-scratches, edge reflections, and dynamic lighting."
            ),
            TexturePack(
                id = "hd_armors",
                name = "Chitin & Krowaz HD Armor Suite",
                category = "Armors",
                resolution = "4K PBR Remaster",
                isEnabled = true,
                polyCountBoost = "6x Mesh Density (45k Triangles)",
                description = "Revamped Chitin Shell, Dragon Flight, and Krowaz armor sets for Tuarek and Barbarian character models with realistic fabric and plate seams.",
                normalMapStrength = 1.0f,
                roughness = 0.40f,
                metallic = 0.80f,
                emissionGlow = 1.0f,
                comparisonBefore = "Blurry 512p texture with baked-in shadows that lacked depth in sunlight.",
                comparisonAfter = "Volumetric normal relief, specular ambient occlusion, and reactive leather straps."
            ),
            TexturePack(
                id = "hd_moradon",
                name = "Moradon & Castle Remastered Textures",
                category = "Terrain & Zone",
                resolution = "2K Remaster",
                isEnabled = true,
                polyCountBoost = "4x Environment Tessellation",
                description = "High-definition cobblestone, Castle walls, Anvil glowing furnace, and dynamic atmospheric water reflections.",
                normalMapStrength = 0.8f,
                roughness = 0.50f,
                metallic = 0.30f,
                emissionGlow = 0.9f,
                comparisonBefore = "Flat repetitive tiled stone surfaces from the original client paketi.",
                comparisonAfter = "Displacement mapped stonework with moss shaders and realistic torchlight radiance."
            ),
            TexturePack(
                id = "aurion_glow",
                name = "Aurion Ethereal Weapon Glow & Shaders",
                category = "Shaders",
                resolution = "Modern Raymarched Bloom",
                isEnabled = true,
                polyCountBoost = "GPU Particle Compute (10k particles)",
                description = "Replaces classic sprite halos with real-time bloom shaders, electric arc sparks (+8/+9/+10), and heat distortion waves.",
                normalMapStrength = 1.0f,
                roughness = 0.20f,
                metallic = 0.95f,
                emissionGlow = 2.0f,
                comparisonBefore = "Static 2D billboard sprite with jagged edges around the weapon.",
                comparisonAfter = "Volumetric pulsing plasma with electric arc discharge and blade edge illumination."
            )
        )

        private fun createInitialZones(): List<ZoneMap> = listOf(
            ZoneMap(
                id = 21,
                name = "Colony Zone (Ronark Land / CZ)",
                smdFile = "battlezone.smd",
                type = "Battlefield",
                minLevel = 70,
                maxLevel = 83,
                isPvp = true,
                coordinates = "X: 1024, Y: 1024",
                karusPlayers = 342,
                elmoPlayers = 338,
                keyMonsters = listOf("Atross", "Riote", "Apostle of Flames", "Boro", "Balrog", "Ego", "Wrath"),
                bossSpawn = "Felankor / Ultima (Center Bowl)",
                description = "The supreme open-world battleground where Karus and El Morad collide for National Points and legendary boss drops."
            ),
            ZoneMap(
                id = 1,
                name = "Moradon Castle & Trade Town",
                smdFile = "Moradon.smd",
                type = "Town",
                minLevel = 1,
                maxLevel = 83,
                isPvp = false,
                coordinates = "X: 512, Y: 512",
                karusPlayers = 210,
                elmoPlayers = 225,
                keyMonsters = listOf("Worm", "Blood Worm", "Bandicoot", "Scorpion", "Kecoon", "Orc Watcher"),
                bossSpawn = "Lycaon / Lobo (Military Camp)",
                description = "The bustling neutral trade capital of Adonis where merchants trade, the Magic Anvil glows, and new recruits begin."
            ),
            ZoneMap(
                id = 11,
                name = "El Morad Castle (Human Home)",
                smdFile = "elmorad.smd",
                type = "Town",
                minLevel = 1,
                maxLevel = 83,
                isPvp = false,
                coordinates = "X: 840, Y: 620",
                karusPlayers = 0,
                elmoPlayers = 145,
                keyMonsters = listOf("Smilodon", "Graveguard", "Deruvish", "Harpy", "Golem"),
                bossSpawn = "Duke / Bach / Bishop",
                description = "The fortress sanctuary of King Helena and the El Morad nobility atop the high white peaks."
            ),
            ZoneMap(
                id = 2,
                name = "Luferson Castle (Karus Home)",
                smdFile = "karus.smd",
                type = "Town",
                minLevel = 1,
                maxLevel = 83,
                isPvp = false,
                coordinates = "X: 320, Y: 740",
                karusPlayers = 160,
                elmoPlayers = 0,
                keyMonsters = listOf("Saber Tooth", "Meganthereon", "Apostle", "Dark Mare"),
                bossSpawn = "Shaula / Lesath / Barkirra",
                description = "The volcanic citadel of Arch Tuarek warriors forged in magma and eternal Karus determination."
            ),
            ZoneMap(
                id = 13,
                name = "Eslant Zone",
                smdFile = "e_EslantZone.smd",
                type = "Dungeon",
                minLevel = 60,
                maxLevel = 83,
                isPvp = false,
                coordinates = "X: 450, Y: 580",
                karusPlayers = 85,
                elmoPlayers = 90,
                keyMonsters = listOf("Dark Mare", "Crimson Wing", "Titan", "Falcon", "Doom Soldier"),
                bossSpawn = "Talos / Harpy Queen / Snake Queen",
                description = "A mystical frozen realm populated by ferocious high-level giants and prime Chitin Shell drops."
            ),
            ZoneMap(
                id = 31,
                name = "Bifrost (Underworld)",
                smdFile = "bifrost.smd",
                type = "Dungeon",
                minLevel = 70,
                maxLevel = 83,
                isPvp = true,
                coordinates = "X: 200, Y: 200",
                karusPlayers = 115,
                elmoPlayers = 108,
                keyMonsters = listOf("Pride", "Gluttony", "Wrath", "Sloth", "Lust", "Envy", "Greed"),
                bossSpawn = "Ultima",
                description = "The Seven Sins dungeon accessible only to the winners of the Monument War, yielding rare Gemstones."
            ),
            ZoneMap(
                id = 61,
                name = "Ardream (Light PK Zone)",
                smdFile = "ardream.smd",
                type = "Battlefield",
                minLevel = 35,
                maxLevel = 59,
                isPvp = true,
                coordinates = "X: 720, Y: 680",
                karusPlayers = 95,
                elmoPlayers = 92,
                keyMonsters = listOf("Blood Seeker", "Beast", "Treant", "Ancient"),
                bossSpawn = "Orc Bandit Officer",
                description = "Fast-paced tactical skirmish zone capped strictly at Level 59 with tight gear balancing."
            )
        )

        private fun createInitialQuests(): List<LuaQuest> = listOf(
            LuaQuest(
                questId = 10305,
                name = "Adonis Border Patrol Movement",
                luaFileName = "10305_Move.lua",
                npcName = "Captain Kuger",
                zoneName = "Moradon / El Morad",
                minLevel = 20,
                objective = "Scout border outposts and deliver encrypted dispatch to Captain Roctar.",
                rewardExp = 150000,
                rewardCoins = 50000,
                rewardItem = "Speed Potion x10",
                sampleLuaSnippet = "-- Quest 10305_Move.lua\nfunction OnTalk(uid, npcid)\n  if CheckLevel(uid) >= 20 then\n    ShowDialog(uid, 'Report to Border Patrol immediately!')\n    GiveQuest(uid, 10305)\n  end\nend"
            ),
            LuaQuest(
                questId = 11510,
                name = "Forkwain's Weapon Tempering",
                luaFileName = "11510_Forkwain.lua",
                npcName = "Blacksmith Forkwain",
                zoneName = "Moradon Castle",
                minLevel = 10,
                objective = "Collect 10 Scorpion Stingers and 5 Lycaon Pelts to forge hardened steel.",
                rewardExp = 80000,
                rewardCoins = 25000,
                rewardItem = "Blessed Upgrade Scroll x1",
                sampleLuaSnippet = "-- Quest 11510_Forkwain.lua\nif CheckItem(uid, 370001000, 10) then\n  RobItem(uid, 370001000, 10)\n  GiveItem(uid, 379001000, 1) -- BUS\n  GiveExp(uid, 80000)\nend"
            ),
            LuaQuest(
                questId = 14201,
                name = "Skaky's Secret Information",
                luaFileName = "14201_Skaky.lua",
                npcName = "Informant Skaky",
                zoneName = "Luferson Castle",
                minLevel = 35,
                objective = "Infiltrate the Smilodon Valley and recover stolen Karus battle plans.",
                rewardExp = 320000,
                rewardCoins = 120000,
                rewardItem = "Chitin Armor Piece",
                sampleLuaSnippet = "-- Quest 14201_Skaky.lua\nfunction OnEvent(uid, event_id)\n  if event_id == 1 then\n    SetNpcState(uid, 14201, STATE_COMPLETED)\n    GiveLoyalty(uid, 150)\n  end\nend"
            ),
            LuaQuest(
                questId = 602,
                name = "Bifrost Gateway Crossing",
                luaFileName = "602_Bifmove.lua",
                npcName = "Gateway Keeper",
                zoneName = "Colony Zone Monument",
                minLevel = 70,
                objective = "Hold the Central CZ Monument for 30 minutes to unlock the portal to Bifrost.",
                rewardExp = 1200000,
                rewardCoins = 500000,
                rewardItem = "Silver Gem x3",
                sampleLuaSnippet = "-- Quest 602_Bifmove.lua\nif IsMonumentCapturedBy(NATION_KARUS) then\n  TeleportUser(uid, ZONE_BIFROST, 200, 200)\n  SendNotice('The Bifrost seal has been broken!')\nend"
            )
        )

        private fun createInitialClans(): List<ClanRank> = listOf(
            ClanRank(1, "TheImmortalKnights", "xSirLancelot", Nation.EL_MORAD, "Royal 1", 48, 1284500),
            ClanRank(2, "KarusWarLords", "BloodAxeGorgor", Nation.KARUS, "Royal 1", 50, 1240200),
            ClanRank(3, "SecretSyndicate", "ShadowDagger", Nation.EL_MORAD, "Royal 2", 44, 980400),
            ClanRank(4, "RedHorde", "DoomTuarek", Nation.KARUS, "Royal 2", 46, 915300),
            ClanRank(5, "OttomanEmpire", "SultanMehmed", Nation.EL_MORAD, "Accredited 1", 42, 782000),
            ClanRank(6, "HellSingers", "DarkPriestess", Nation.KARUS, "Accredited 1", 38, 650000)
        )
    }
}
