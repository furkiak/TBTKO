# Knight Online (AREKOLO) - Mobile Server Suite & Game Companion

A modern Android application rewriting and modernizing the classic Knight Online (AREKOLO / TBTKO) PvP server engine and client suite. Built with Kotlin, Jetpack Compose, Material 3, Firebase Firestore, and Firebase AI Logic (Gemini API).

## Key Features

1. **Modernized Server Engine & Telemetry**
   - High-performance 60 TPS async ring-buffer architecture (replacing legacy 20 TPS Windows Winsock loops).
   - Real-time orchestration of LoginServer (Port 15100), AIServer (Port 10020), GameServer (Port 20000), and Aurion Microservice Bridge.
   - Interactive live administrative console with instant server directives (`/spawn`, `/tps`, `/drop_boost`, `/aurion_sync`, `/weather`, `/clear_logs`).

2. **Aurion Game Logic Engine**
   - Dynamic Loot & Drop Balancer preventing economy inflation.
   - Sub-tick combat rollback & lag compensation.
   - Interactive combat calculator (AP vs AC vs critical mitigation across Warrior, Rogue, Mage, Priest, Kurian).
   - Dynamic loot drop simulator against authentic boss and mob tables.

3. **HD Textures & Magic Anvil Upgrade Simulator**
   - 4K PBR Remaster Pack manager with real-time roughness, metallic, and emission glow sliders.
   - Interactive Canvas Weapon Glow Visualizer with animated shader glows (+1 to +6 yellow, +7 electric blue, +8 emerald poison, +9 infernal gold, +10 void purple lightning).
   - Authentic Magic Anvil upgrade forging with Blessed Upgrade Scrolls (BUS), Shadow Piece, Trina's Piece, suspenseful hammer animations, and success/burn outcomes.

4. **SQL & Firebase MSC Visualizer (`sql_Firebase visualizemsc`)**
   - Interactive Message Sequence Chart (MSC / Sequence Diagram) showing real-time client-to-server-to-ODBC-to-Firestore packet flows.
   - ODBC SQL Table Inspector (`USERDATA`, `KNIGHTS`, `ITEM_TABLE`, `ZONE_INFO`).
   - One-click bidirectional synchronization between SQL tables and Cloud Firestore (`server_state` collection).

5. **Gemini MCP Game Designer & Development Helper**
   - Powered by Gemini 3.8 Flash via Firebase AI Logic (`Firebase.ai`).
   - Real-time world, zone, and quest generator from natural language prompts.
   - **Voice Micro Function**: Hands-free voice speech trigger for instant world design prompting.
   - Automatic persistence of generated designs to Cloud Firestore (`world_designs` collection).

6. **World Zones & Lua Quest Explorer**
   - Zone directory loaded directly from client `.smd` geometry files (Moradon, Colony Zone, El Morad, Luferson, Eslant, Bifrost, Ardream, Delos).
   - Interactive Lua quest viewer displaying original quest dialogs, rewards, and Lua 5.2 VM scripts.
