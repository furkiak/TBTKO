package com.example.data.model

enum class Nation(val displayName: String) {
    KARUS("Karus (Orc)"),
    EL_MORAD("El Morad (Human)")
}

enum class CharacterClass(val displayName: String, val baseRole: String) {
    WARRIOR("Warrior / Berserker", "Melee Tank & Heavy Brawler"),
    ROGUE("Rogue / Assassin & Archer", "High Burst & Stealth DPS"),
    MAGICIAN("Magician / Sorcerer", "AoE Elemental Burst & Crowd Control"),
    PRIEST("Priest / Shaman & Cleric", "Healing, Buffs, Debuffs & Armor"),
    KURIAN("Kurian / Porutu", "Grappler, DoT & Debuff Specialist")
}

enum class ItemRarity {
    NORMAL,
    MAGIC,
    RARE,
    UNIQUE,
    LEGENDARY
}

enum class ElementalType {
    NONE,
    FLAME,
    GLACIER,
    LIGHTNING,
    POISON
}

data class EquipmentItem(
    val id: Long,
    val name: String,
    val grade: Int, // 0 to 10
    val isRebirth: Boolean = false,
    val rebirthLevel: Int = 0,
    val category: String, // "Two-Handed Axe", "Dagger", "Two-Handed Sword", "Staff", "Pauldron"
    val attackPower: Int,
    val defense: Int,
    val requiredClass: CharacterClass,
    val weight: Int,
    val durability: Int,
    val elemental: ElementalType = ElementalType.NONE,
    val elementalDamage: Int = 0,
    val rarity: ItemRarity = ItemRarity.UNIQUE,
    val description: String
)

enum class UpgradeScroll(
    val displayName: String,
    val description: String,
    val bonusRate: Float,
    val preservesOnFail: Boolean
) {
    BLESSED_UPGRADE_SCROLL("Blessed Upgrade Scroll (BUS)", "Standard 100% weapon & armor upgrade scroll with traditional rates", 0.0f, false),
    SHADOW_PIECE("Shadow Piece (+15%)", "Ancient relic that elevates success rate by +15%", 0.15f, false),
    TRINA_PIECE("Trina's Piece (+35%)", "Legendary sacred blessing that dramatically increases success chances", 0.35f, false),
    REBIRTH_SCROLL("Rebirth Upgrade Scroll", "Transmutes +11 or +7 unique items into luminous Rebirth weapons", 0.10f, false)
}

enum class UpgradeOutcome {
    SUCCESS,
    FAILED_DESTROYED,
    FAILED_SAVED
}

data class UpgradeResult(
    val previousGrade: Int,
    val newGrade: Int,
    val item: EquipmentItem,
    val scroll: UpgradeScroll,
    val outcome: UpgradeOutcome,
    val calculatedRate: Float,
    val roll: Float,
    val message: String,
    val timestamp: String
)

data class TexturePack(
    val id: String,
    val name: String,
    val category: String, // "Weapons", "Armors", "Terrain & Zone", "Shaders"
    val resolution: String, // "4K PBR Remaster", "2K Remaster", "Legacy 512p"
    val isEnabled: Boolean,
    val polyCountBoost: String,
    val description: String,
    val normalMapStrength: Float = 1.0f,
    val roughness: Float = 0.35f,
    val metallic: Float = 0.85f,
    val emissionGlow: Float = 1.2f,
    val comparisonBefore: String,
    val comparisonAfter: String
)

data class ZoneMap(
    val id: Int,
    val name: String,
    val smdFile: String,
    val type: String, // "Town", "Colony Zone (CZ)", "Dungeon", "Battlefield"
    val minLevel: Int,
    val maxLevel: Int,
    val isPvp: Boolean,
    val coordinates: String,
    val karusPlayers: Int,
    val elmoPlayers: Int,
    val keyMonsters: List<String>,
    val bossSpawn: String,
    val description: String
)

data class LuaQuest(
    val questId: Int,
    val name: String,
    val luaFileName: String,
    val npcName: String,
    val zoneName: String,
    val minLevel: Int,
    val objective: String,
    val rewardExp: Long,
    val rewardCoins: Long,
    val rewardItem: String,
    val sampleLuaSnippet: String
)

data class ClanRank(
    val rank: Int,
    val name: String,
    val leader: String,
    val nation: Nation,
    val grade: String, // "Royal 1", "Royal 2", "Accredited 1", "Training"
    val members: Int,
    val nationalPoints: Long
)
