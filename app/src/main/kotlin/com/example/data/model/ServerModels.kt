package com.example.data.model

enum class ServerStatus {
    RUNNING,
    STOPPED,
    SYNCING,
    RESTARTING
}

enum class LogLevel {
    INFO,
    WARN,
    COMBAT,
    AURION,
    ANVIL,
    PACKET
}

data class ServerNode(
    val id: String,
    val name: String,
    val description: String,
    val port: Int,
    val status: ServerStatus,
    val tps: Float,
    val targetTps: Float = 60f,
    val latencyMs: Float,
    val memoryMb: Int,
    val packetsPerSec: Int,
    val isModernized: Boolean = true
)

data class ServerLogEntry(
    val id: String,
    val timestamp: String,
    val level: LogLevel,
    val source: String,
    val message: String
)

data class AurionConfig(
    val zeroCopyBuffersEnabled: Boolean = true,
    val dynamicDropBalancer: Boolean = true,
    val smartBehaviorTrees: Boolean = true,
    val subTickLagCompensation: Boolean = true,
    val crossRealmSharding: Boolean = true,
    val modernCombatTickRate: Int = 60,
    val dropLuckMultiplier: Float = 1.25f,
    val antiSpeedHackTolerance: Float = 0.05f
)

data class ServerMetrics(
    val uptimeMinutes: Long = 1840,
    val totalPlayers: Int = 1420,
    val karusCount: Int = 712,
    val elmoCount: Int = 708,
    val activeZoneCount: Int = 18,
    val totalNpcCount: Int = 4320,
    val peakMemoryMb: Int = 1840,
    val averageTps: Float = 59.8f
)
