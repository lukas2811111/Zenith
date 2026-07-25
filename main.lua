-- 1. Die UI-Bibliothek von Rayfield laden
local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

-- 2. Das Hauptfenster erstellen (Das Gehäuse)
local Window = Rayfield:CreateWindow({
   Name = "Zenith | Emergency Hamburg", -- Hier deinen Wunschnamen eintragen
   LoadingTitle = "Vortex-Engine wird initialisiert...",
   LoadingSubtitle = "by Lukas",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "VortexHubData", 
      FileName = "HamburgConfig"
   },
   KeySystem = false -- Lassen wir für den Anfang aus
})

-- 3. Die Tabs (Menüpunkte auf der linken Seite) erstellen
-- Die Nummern am Ende sind die IDs für die Symbole (Icons)
local MainTab = Window:CreateTab("Spieler", 0)       -- Mensch/Spieler Icon
local CombatTab = Window:CreateTab("Kampf & ESP", 0) -- Schild/Schwert Icon
local TransportTab = Window:CreateTab("Teleports", 0)-- Karten Icon
local AutoTab = Window:CreateTab("Auto-Farm", 0)     -- Zahnrad Icon
local SettingsTab = Window:CreateTab("Einstellungen", 0) -- Werkzeug Icon

-- 4. Erste optische Unterteilungen (Sections) in den Tabs erstellen

-- IM SPIELER TAB:
MainTab:CreateSection("Bewegung")
-- Hier kommt später der Speed-Slider hin

MainTab:CreateSection("Eigenschaften")
-- Hier kommt später Infinite Jump hin

-- IM TELEPORT TAB:
TransportTab:CreateSection("Fraktionen & Jobs")
-- Hier kommen Knöpfe für Polizei, ADAC etc. hin

TransportTab:CreateSection("Kriminelle Orte")
-- Hier kommen Knöpfe für Juwelier und Bank hin

-- 5. Eine Willkommens-Meldung anzeigen
Rayfield:Notify({
   Title = "Vortex geladen!",
   Content = "Das UI wurde erfolgreich über Xeno injiziert.",
   Duration = 4,
   Image = 4483362458,
})

