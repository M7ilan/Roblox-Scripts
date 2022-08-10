local UserInputService = game:GetService("UserInputService")
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/M7ilan/Roblox/main/UILib/UILib.lua"))()

local Win1 = UILib.CreateWindow("Super Power")



local Main = Win1:Tab("Main")
local AutoFarm = Main:Section("Auto Farm")
local Chests = Main:Section("Auto Chests")
local Quests = Main:Section("Auto Quests")



local Teleports = Win1:Tab("Teleports")
local TPStrength = Teleports:Section("Strength")
local TPEndurance = Teleports:Section("Endurance")
local TPPsychic = Teleports:Section("Psychic")



-- local Other = Win1:Tab("Settings")
-- local Settings = Other:Section("Settings")


-------------------------------------------------------------------- Variables --------------------------------------------------------------------



local player = game.Players.LocalPlayer

local AutoRankBool = false
local StrengthBool = false
local EnduranceBool = false
local PsychicBool = false
local AutoMythicalChestsBool = false
local AutoClaimDailyStrengthRewardBool = false
local AutoClaimDailyEnduranceRewardBool = false
local AutoClaimDailyPsychicRewardBool = false
local AutoClaimWeeklyStrengthRewardBool = false
local AutoClaimWeeklyEnduranceRewardBool = false
local AutoClaimWeeklyPsychicRewardBool = false



-------------------------------------------------------------------- Functions --------------------------------------------------------------------



function AutoRank()
    spawn(function()
        while AutoRankBool do
            game:GetService("ReplicatedStorage").Functions.BuyRank:InvokeServer()
            wait(0.1)
        end
    end)
end



function Strength()
    spawn(function()
        while StrengthBool do
            local args = {[1] = "Strength"}
            game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
            wait(0.1)
        end
    end)
end



function Endurance()
    spawn(function()
        while EnduranceBool do
            local args = {[1] = "Endurance"}
            game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
            wait(0.1)
        end
    end)
end



function Psychic()
    spawn(function()
        while PsychicBool do
            local args = {[1] = "Psychic"}
            game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
            wait(0.1)
        end
    end)
end



function AutoMythicalChests()
    spawn(function()
        while AutoMythicalChestsBool do
            local args = {[1] = "MythicalChest"}
            game:GetService("ReplicatedStorage").Events.PurchaseItem:FireServer(unpack(args))
            wait(0.1)
        end
    end)
end



------------------------------ Auto Quests ------------------------------



function AutoClaimDailyStrengthReward() -- Daily Strength
    spawn(function()
        while AutoClaimDailyStrengthRewardBool do
            local args = {[1] = "DailyStrength"}
            game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
            wait(1)
        end
    end)
end



function AutoClaimDailyEnduranceReward() -- Daily Endurance
    spawn(function()
        while AutoClaimDailyEnduranceRewardBool do
            local args = {[1] = "DailyEndurance"}
            game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
            wait(1)
        end
    end)
end



function AutoClaimDailyPsychicReward() -- Daily Psychic
    spawn(function()
        while AutoClaimDailyPsychicRewardBool do
            local args = {[1] = "DailyPsychic"}
            game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
            wait(1)
        end
    end)
end



function AutoClaimWeeklyStrengthReward() -- Weekly Strength
    spawn(function()
        while AutoClaimWeeklyStrengthRewardBool do
            local args = {[1] = "WeeklyStrength"}
            game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
            wait(1)
        end
    end)
end



function AutoClaimWeeklyEnduranceReward() -- Weekly Endurance
    spawn(function()
        while AutoClaimWeeklyEnduranceRewardBool do
            local args = {[1] = "WeeklyEndurance"}
            game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
            wait(1)
        end
    end)
end



function AutoClaimWeeklyPsychicReward() -- Weekly Psychic
    spawn(function()
        while AutoClaimWeeklyPsychicRewardBool do
            local args = {[1] = "WeeklyPsychic"}
            game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
            wait(1)
        end
    end)
end



-------------------------------------------------------------------- Main --------------------------------------------------------------------



------------------------------ AutoFarm ------------------------------



AutoFarm:Toggle("Auto Rank", false, function(bool)
    AutoRankBool = bool
    if bool then
        AutoRank()
    end
end)


AutoFarm:Toggle("Strength", false, function(bool)
    StrengthBool = bool
    if bool then
        Strength()
    end
end)



AutoFarm:Toggle("Endurance", false, function(bool)
    EnduranceBool = bool
    if bool then
        Endurance()
    end
end)



AutoFarm:Toggle("Psychic", false, function(bool)
    PsychicBool = bool
    if bool then
        Psychic()
    end
end)



--------------------------------- Auto Chests ---------------------------------



Chests:Toggle("Mythical Chest", false, function(bool)
    AutoMythicalChestsBool = bool
    if bool then
        AutoMythicalChests()
    end
end)


--------------------------------- Auto Quests ---------------------------------

-- Daily Strength
-- Daily Endurance
-- Daily Psychic
-- Weekly Strength
-- Weekly Endurance
-- Weekly Psychic


Quests:Toggle("Auto Claim Daily Strength Rewards", false, function(bool)
    AutoClaimDailyStrengthRewardBool = bool
    if bool then
        AutoClaimDailyStrengthReward()
    end
end)



Quests:Toggle("Auto Claim Daily Endurance Rewards", false, function(bool)
    AutoClaimDailyEnduranceRewardBool = bool
    if bool then
        AutoClaimDailyEnduranceReward()
    end
end)



Quests:Toggle("Auto Claim Daily Psychic Rewards", false, function(bool)
    AutoClaimDailyPsychicRewardBool = bool
    if bool then
        AutoClaimDailyPsychicReward()
    end
end)



Quests:Toggle("Auto Claim Weekly Strength Rewards", false, function(bool)
    AutoClaimDailyStrengthRewardBool = bool
    if bool then
        AutoClaimWeeklyStrengthReward()
    end
end)



Quests:Toggle("Auto Claim Weekly Endurance Rewards", false, function(bool)
    AutoClaimDailyStrengthRewardBool = bool
    if bool then
        AutoClaimWeeklyEnduranceReward()
    end
end)



Quests:Toggle("Auto Claim Weekly Psychic Rewards", false, function(bool)
    AutoClaimDailyStrengthRewardBool = bool
    if bool then
        AutoClaimWeeklyPsychicReward()
    end
end)



--------------------------------- Teleports ---------------------------------



Teleports:Button("Home", function()
    player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SpawnPart.CFrame
end)



TPStrength:Button("10K", function()
    player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").TrainingAreaHitbox.Car.CFrame
end)



-------------------------------------------------------------------- Settings --------------------------------------------------------------------



-- Settings:Button("Destroy", function()
--     Settings:DestroyButton()
-- end)