local M7Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/M7ilan/M7-UI-Library/main/Source.lua')))()
local Window = M7Lib:CreateWindow("Legend of Speed", "M7ilan#5185", "", Color3.fromRGB(50, 200, 100))

----------------------------------------------------------------------------------------------------

local HumanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").RootPart
local VU = game:GetService("VirtualUser")
local LP = game.Players.LocalPlayer
local AFK = false
local Auto_Rebirth = false
local Auto_Collect_All_Orbs = false
local City_Auto_5_Speed = false
local City_Auto_10_Speed = false
local City_Auto_20_Speed = false
local City_Auto_1_XP = false
local City_Auto_3_Gem = false
local SnowCity_Auto_5_Speed = false
local SnowCity_Auto_10_Speed = false
local SnowCity_Auto_20_Speed = false
local SnowCity_Auto_1_XP = false
local SnowCity_Auto_3_Gem = false
local MagmaCity_Auto_5_Speed = false
local MagmaCity_Auto_10_Speed = false
local MagmaCity_Auto_20_Speed = false
local MagmaCity_Auto_1_XP = false
local MagmaCity_Auto_3_Gem = false
local Desert_Auto_5_Speed = false
local Desert_Auto_10_Speed = false
local Desert_Auto_20_Speed = false
local Desert_Auto_1_XP = false
local Desert_Auto_3_Gem = false
local LegendaryHighway_Auto_5_Speed = false
local LegendaryHighway_Auto_10_Speed = false
local LegendaryHighway_Auto_20_Speed = false
local LegendaryHighway_Auto_1_XP = false
local LegendaryHighway_Auto_3_Gem = false

local OpenCrystal = false
local SelectedCrystal = nil
local Crystals = {}
for i, v in pairs(game:GetService("Workspace").mapCrystalsFolder:GetChildren()) do
    table.insert(Crystals, v.Name)
end

local Auto_Delete_Pet_Rarity = false
local SelectedDeletedPetRarity = nil
local PetsRarity = {}
for i, v in pairs(LP.petsFolder:GetChildren()) do
    table.insert(PetsRarity, v.Name)
end

local Auto_Delete_Trail_Rarity = false
local SelectedDeletedTrailRarity = nil
local TrailsRarity = {}
for i, v in pairs(LP.trailsFolder:GetChildren()) do
    table.insert(TrailsRarity, v.Name)
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local GameTab = Window:CreateTab("Game")
local GameSection = GameTab:CreateSection("Game")

GameSection:Toggle("Anti AFK", false, function(value)
    AFK = value
    LP.Idled:connect(function()
        if AFK then
            VU:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            task.wait()
            VU:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end
    end)
end)

GameSection:Toggle("Auto Rebirth", false, function(value)
    Auto_Rebirth = value
    task.spawn(function()
        while Auto_Rebirth do
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            task.wait()
        end
    end)
end)

GameSection:Toggle("All Orbs", false, function(value)
    Auto_Collect_All_Orbs = value
    task.spawn(function()
        while Auto_Collect_All_Orbs do
            for _, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" then
                    firetouchinterest(HumanoidRootPart, v.Parent, 0)
                end
            end
            task.wait()
        end
    end)
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local AutoTab = Window:CreateTab("Auto")
local AutoOrbCitySection = AutoTab:CreateSection("Auto Orb (City)")

AutoOrbCitySection:Toggle("Blue Orb", false, function(value)
    City_Auto_5_Speed = value
    task.spawn(function()
        while City_Auto_5_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
            task.wait()
        end
    end)
end)
AutoOrbCitySection:Toggle("Orange Orb", false, function(value)
    City_Auto_10_Speed = value
    task.spawn(function()
        while City_Auto_10_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
            task.wait()
        end
    end)
end)
AutoOrbCitySection:Toggle("Red Orb", false, function(value)
    City_Auto_20_Speed = value
    task.spawn(function()
        while City_Auto_20_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            task.wait()
        end
    end)
end)
AutoOrbCitySection:Toggle("Yellow Orb", false, function(value)
    City_Auto_1_XP = value
    task.spawn(function()
        while City_Auto_1_XP do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            task.wait()
        end
    end)
end)
AutoOrbCitySection:Toggle("Gem", false, function(value)
    City_Auto_3_Gem = value
    task.spawn(function()
        while City_Auto_3_Gem do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
            task.wait()
        end
    end)
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local AutoOrbSnowCitySection = AutoTab:CreateSection("Auto Orb (Snow City)")

AutoOrbSnowCitySection:Toggle("Blue Orb", false, function(value)
    SnowCity_Auto_5_Speed = value
    task.spawn(function()
        while SnowCity_Auto_5_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Snow City")
            task.wait()
        end
    end)
end)
AutoOrbSnowCitySection:Toggle("Orange Orb", false, function(value)
    SnowCity_Auto_10_Speed = value
    task.spawn(function()
        while SnowCity_Auto_10_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Snow City")
            task.wait()
        end
    end)
end)
AutoOrbSnowCitySection:Toggle("Red Orb", false, function(value)
    SnowCity_Auto_20_Speed = value
    task.spawn(function()
        while SnowCity_Auto_20_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
            task.wait()
        end
    end)
end)
AutoOrbSnowCitySection:Toggle("Yellow Orb", false, function(value)
    SnowCity_Auto_1_XP = value
    task.spawn(function()
        while SnowCity_Auto_1_XP do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
            task.wait()
        end
    end)
end)
AutoOrbSnowCitySection:Toggle("Gem", false, function(value)
    SnowCity_Auto_3_Gem = value
    task.spawn(function()
        while SnowCity_Auto_3_Gem do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
            task.wait()
        end
    end)
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local AutoOrbMagmaCitySection = AutoTab:CreateSection("Auto Orb (Magma City)")

AutoOrbMagmaCitySection:Toggle("Blue Orb", false, function(value)
    MagmaCity_Auto_5_Speed = value
    task.spawn(function()
        while MagmaCity_Auto_5_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Magma City")
            task.wait()
        end
    end)
end)
AutoOrbMagmaCitySection:Toggle("Orange Orb", false, function(value)
    MagmaCity_Auto_10_Speed = value
    task.spawn(function()
        while MagmaCity_Auto_10_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Magma City")
            task.wait()
        end
    end)
end)
AutoOrbMagmaCitySection:Toggle("Red Orb", false, function(value)
    MagmaCity_Auto_20_Speed = value
    task.spawn(function()
        while MagmaCity_Auto_20_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
            task.wait()
        end
    end)
end)
AutoOrbMagmaCitySection:Toggle("Yellow Orb", false, function(value)
    MagmaCity_Auto_1_XP = value
    task.spawn(function()
        while MagmaCity_Auto_1_XP do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
            task.wait()
        end
    end)
end)
AutoOrbMagmaCitySection:Toggle("Gem", false, function(value)
    MagmaCity_Auto_3_Gem = value
    task.spawn(function()
        while MagmaCity_Auto_3_Gem do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
            task.wait()
        end
    end)
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local AutoOrbDesertSection = AutoTab:CreateSection("Auto Orb (Desert)")

AutoOrbDesertSection:Toggle("Blue Orb", false, function(value)
    Desert_Auto_5_Speed = value
    task.spawn(function()
        while Desert_Auto_5_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Desert")
            task.wait()
        end
    end)
end)
AutoOrbDesertSection:Toggle("Orange Orb", false, function(value)
    Desert_Auto_10_Speed = value
    task.spawn(function()
        while Desert_Auto_10_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Desert")
            task.wait()
        end
    end)
end)
AutoOrbDesertSection:Toggle("Red Orb", false, function(value)
    Desert_Auto_20_Speed = value
    task.spawn(function()
        while Desert_Auto_20_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert")
            task.wait()
        end
    end)
end)
AutoOrbDesertSection:Toggle("Yellow Orb", false, function(value)
    Desert_Auto_1_XP = value
    task.spawn(function()
        while Desert_Auto_1_XP do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert")
            task.wait()
        end
    end)
end)
AutoOrbDesertSection:Toggle("Gem", false, function(value)
    Desert_Auto_3_Gem = value
    task.spawn(function()
        while Desert_Auto_3_Gem do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert")
            task.wait()
        end
    end)
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local AutoOrbLegendaryHighwaySection = AutoTab:CreateSection("Auto Orb (Legendary Highway)")

AutoOrbLegendaryHighwaySection:Toggle("Blue Orb", false, function(value)
    LegendaryHighway_Auto_5_Speed = value
    task.spawn(function()
        while LegendaryHighway_Auto_5_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Legends Highway")
            task.wait()
        end
    end)
end)
AutoOrbLegendaryHighwaySection:Toggle("Orange Orb", false, function(value)
    LegendaryHighway_Auto_10_Speed = value
    task.spawn(function()
        while LegendaryHighway_Auto_10_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Legends Highway")
            task.wait()
        end
    end)
end)
AutoOrbLegendaryHighwaySection:Toggle("Red Orb", false, function(value)
    LegendaryHighway_Auto_20_Speed = value
    task.spawn(function()
        while LegendaryHighway_Auto_20_Speed do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Legends Highway")
            task.wait()
        end
    end)
end)
AutoOrbLegendaryHighwaySection:Toggle("Yellow Orb", false, function(value)
    LegendaryHighway_Auto_1_XP = value
    task.spawn(function()
        while LegendaryHighway_Auto_1_XP do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Legends Highway")
            task.wait()
        end
    end)
end)
AutoOrbLegendaryHighwaySection:Toggle("Gem", false, function(value)
    LegendaryHighway_Auto_3_Gem = value
    task.spawn(function()
        while LegendaryHighway_Auto_3_Gem do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Legends Highway")
            task.wait()
        end
    end)
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local CrystalsTab = Window:CreateTab("Crystals")
local CrystalSection = CrystalsTab:CreateSection("Crystals")

CrystalSection:Toggle("Auto Open Crystal", false, function(e)
    OpenCrystal = e
    task.spawn(function()
        while OpenCrystal do
            if SelectedCrystal then
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", SelectedCrystal)
            end
            task.wait()
        end
    end)
end)

CrystalSection:Dropdown("Crystals", Crystals, function(e)
    SelectedCrystal = e
end)

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local AutoDeleteTab = Window:CreateTab("Auto Delete")
local Auto_Delete_Pets = AutoDeleteTab:CreateSection("Auto Delete Pets")
local Auto_Delete_Trails = AutoDeleteTab:CreateSection("Auto Delete Trails")

for i1, v1 in pairs(game:GetService("ReplicatedStorage").cPetShopFolder:GetChildren()) do
    if not v1:FindFirstChild("isTrail") then
        local on = false
        local PetName = tostring(v1)
        Auto_Delete_Pets:Toggle(PetName, false, function(toggle)
            on = toggle
            task.spawn(function()
                while on do
                    for i, v2 in pairs(LP.petsFolder:GetDescendants()) do
                        if v2.Name == "chosenName" and v2.Value == PetName then
                            game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", v2.Parent)
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
end

for i1, v1 in pairs(game:GetService("ReplicatedStorage").cPetShopFolder:GetChildren()) do
    if v1:FindFirstChild("isTrail") then
        local on = false
        local TrailName = tostring(v1)
        Auto_Delete_Trails:Toggle(TrailName, false, function(toggle)
            on = toggle
            task.spawn(function()
                while on do
                    for i, v2 in pairs(LP.trailsFolder:GetDescendants()) do
                        if v2.Name == TrailName then
                            game:GetService("ReplicatedStorage").rEvents.sellTrailEvent:FireServer("sellTrail", v2)
                        end
                    end
                    task.wait()
                end
            end)
        end)
    end
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local TeleportTab = Window:CreateTab("Teleport")
local TeleportSection = TeleportTab:CreateSection("Teleport")

local Areas = {}
for i, v in pairs(game:GetService("Workspace").areaCircles:GetDescendants()) do
    if v.Name == "areaName" then
        TeleportSection:Button(tostring(v.Value), function()
            game:GetService("ReplicatedStorage").rEvents.areaTravelRemote:InvokeServer("travelToArea", v.Parent)
        end)
    end
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local SettingsTab = Window:CreateTab("Settings")
local SettingsSection = SettingsTab:CreateSection("Settings")

SettingsSection:Button("Destroy UI", function()
    M7Lib:DestroyUI()
end)

----------------------------------------------------------------------------------------------------
