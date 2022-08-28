-- Super Power Fighting Simulator Script by M7ilan#5185

local GameName = "Super Power"
local Version = "2.1.0"

-- Game
local ESPBool
local AutoRedeemAllChestsBool
local AutoClaimMiniChestsBool
local AutoClaimDailyDealBool
local AntiAFKBool

-- Auto Train
local AutoTrainStrengthBool
local AutoTrainEnduranceBool
local AutoTrainPsychicBool
local AutoTrainSpeedBool

-- Auto Upgrade
local AutoUpgradeRankBool
local AutoUpgradeFusionBool
local AutoStrengthMultiplierBool
local AutoEnduranceMultiplierBool
local AutoPsychicMultiplierBool
local AutoSpeedMultiplierBool
local AutoLuckMultiplierBool
local AutoChestSpeedMultiplierBool

-- Auto Quests
local AutoDailyStrengthQuestBool
local AutoDailyEnduranceQuestBool
local AutoDailyPsychicQuestBool
local AutoWeeklyStrengthQuestBool
local AutoWeeklyEnduranceQuestBool
local AutoWeeklyPsychicQuestBool
local AutoGamesRebornQuestBool
local AutoAnubisQuestBool
local AutoPoseidonQuestBool

-- Auto Goals
local AutoTotalEnduranceGoalBool
local AutoTotalStrengthGoalBool
local AutoTotalPsychicGoalBool
local AutoTotalSpeedGoalBool
local AutoTotalTokensGoalBool
local AutoTotalGemsGoalBool
local AutoQuestsCompletedGoalBool
local AutoTimePlayedGoalBool
local AutoChestsOpenedGoalBool
local AutoEnemyKillsGoalBool
local AutoBossKillsGoalBool

function M7LibSpawner()
    local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/M7ilan/Roblox/main/UILib/M7Lib.lua"))() -- By M7ilan

    local Window = UILib.CreateWindow(GameName, "v"..Version)


    -------------------------------------------------- GUI --------------------------------------------------

    local GameTab = Window:Tab("Game")
    local GameSection = GameTab:Section("Game")

    local AutoTab = Window:Tab("Auto")
    local AutoTrainSection = AutoTab:Section("Auto Train")
    local AutoUpgradeSection = AutoTab:Section("Auto Upgrade")
    local AutoMainQuestsSection = AutoTab:Section("Auto Main Quests")
    local AutoDailyQuestsSection = AutoTab:Section("Auto Daily Quests")
    local AutoWeeklyQuestsSection = AutoTab:Section("Auto Weekly Quests")
    local AutoGoalsSection = AutoTab:Section("Auto Goals")

    local StrengthTab = Window:Tab("Strength")
    local StrengthAreasSection = StrengthTab:Section("Strength Areas")

    local EnduranceTab = Window:Tab("Endurance")
    local EnduranceAreasSection = EnduranceTab:Section("Endurance Areas")

    local PsychicTab = Window:Tab("Psychic")
    local PsychicAreasSection = PsychicTab:Section("Psychic Areas")

    local SettingsTab = Window:Tab("Settings")
    local SettingsSection = SettingsTab:Section("Settings")

    -------------------------------------------------- Variables --------------------------------------------------

    local _LocalPlayer = game.Players.LocalPlayer
    local TeleportService = game:GetService('TeleportService')
    local HttpService = game:GetService("HttpService")
    local _RobloxAPI = "https://games.roblox.com/v1/games/"
    local _PlaceId = game.PlaceId
    local _Servers = _RobloxAPI.._PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
    local vu = game:GetService("VirtualUser")

    -- Game
    ESPBool = false
    AutoRedeemAllChestsBool = false
    AutoClaimMiniChestsBool = false
    AutoClaimDailyDealBool = false
    AntiAFKBool = false

    -- Auto Train
    AutoTrainStrengthBool = false
    AutoTrainEnduranceBool = false
    AutoTrainPsychicBool = false
    AutoTrainSpeedBool = false

    -- Auto Upgrade
    AutoUpgradeRankBool = false
    AutoUpgradeFusionBool = false
    AutoStrengthMultiplierBool = false
    AutoEnduranceMultiplierBool = false
    AutoPsychicMultiplierBool = false
    AutoSpeedMultiplierBool = false
    AutoLuckMultiplierBool = false
    AutoChestSpeedMultiplierBool = false

    -- Auto Quests
    AutoDailyStrengthQuestBool = false
    AutoDailyEnduranceQuestBool = false
    AutoDailyPsychicQuestBool = false
    AutoWeeklyStrengthQuestBool = false
    AutoWeeklyEnduranceQuestBool = false
    AutoWeeklyPsychicQuestBool = false
    AutoGamesRebornQuestBool = false
    AutoAnubisQuestBool = false
    AutoPoseidonQuestBool = false

    -- Auto Goals
    AutoTotalEnduranceGoalBool = false
    AutoTotalStrengthGoalBool = false
    AutoTotalPsychicGoalBool = false
    AutoTotalSpeedGoalBool = false
    AutoTotalTokensGoalBool = false
    AutoTotalGemsGoalBool = false
    AutoQuestsCompletedGoalBool = false
    AutoTimePlayedGoalBool = false
    AutoChestsOpenedGoalBool = false
    AutoEnemyKillsGoalBool = false
    AutoBossKillsGoalBool = false

    -- Train Areas --
    -- Strength
    local TrainArea_Rock_100_Strength = CFrame.new(-285.114319, 87.7472153, -142.039993, -0.866141438, 0, -0.499799222, 0, 1, 0, 0.499799222, 0, -0.866141438)
    local TrainArea_PunchingBag_1K_Strength = CFrame.new(-784.765015, 79.9249496, -350.090881, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    local TrainArea_Car_10K_Strength = CFrame.new(-139.489044, 73.6191635, -425.562592, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    local TrainArea_Construction_100K_Strength = CFrame.new(-962.114319, 81.1207657, -171.904892, -0.942923784, 0, -0.333008468, 0, 1, 0, 0.333008468, 0, -0.942923784)
    local TrainArea_Meteor_5M_Strength = CFrame.new(-666.684937, 101.479324, -1150.85669, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    local TrainArea_Crystals_500M_Strength = CFrame.new(124.807785, 68.7882309, -511.888397, -0.866141438, 0, -0.499799222, 0, 1, 0, 0.499799222, 0, -0.866141438)
    local TrainArea_Scorpions_50B_Strength = CFrame.new(-1615.99219, 60.0954971, -1773.82312, 0.258864343, -0, -0.965913713, 0, 1, -0, 0.965913713, 0, 0.258864343)
    local TrainArea_Sphinx_30T_Strength = CFrame.new(-1404.48279, 98.1654968, -1872.84363, 0.258864343, -0, -0.965913713, 0, 1, -0, 0.965913713, 0, 0.258864343)
    local TrainArea_Pearl_10Qa_Strength = CFrame.new(1150.20825, 65.2804108, 947.487793, 0.707134247, -6.60649093e-05, 0.707079291, -6.60649093e-05, 1, 0.000159503557, -0.707079291, -0.000159503557, 0.707134247)
    local TrainArea_Statue_25Qi_Strength = CFrame.new(1002.10425, 106.758469, 850.832642, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_SmallRobot_10Sp_Strength = CFrame.new(-1554.97034, 91.1180191, 718.405396, -0.996177077, 0, 0.0873605981, 0, 1, 0, -0.0873605981, 0, -0.996177077)
    local TrainArea_RockGiant_5N_Strength = CFrame.new(-1795.00696, 120.101746, 829.63269, -0.996177077, 0, 0.0873605981, 0, 1, 0, -0.0873605981, 0, -0.996177077)
    local TrainArea_NinjaTrainingZone_100Dc_Strength = CFrame.new(936.089844, 59.5172653, -1901.95032, 9.53674316e-06, 2.98023224e-08, -1, -0.00622593611, 0.999980628, -2.98023224e-08, 0.999980628, 0.00622593611, 9.53674316e-06)
    local TrainArea_UltimateDojo_6Dd_Strength = CFrame.new(1146.64209, 63.3583298, -1626.00342, 9.53674316e-06, 2.98023224e-08, -1, -0.00622593611, 0.999980628, -2.98023224e-08, 0.999980628, 0.00622593611, 9.53674316e-06)
    local TrainArea_BluePlanet_150Td_Strength = CFrame.new(-1672.21228, 5881.94238, -965.538879, -0.866141438, 0, -0.499799222, 0, 1, 0, 0.499799222, 0, -0.866141438)
    local TrainArea_RedPlanet_150Qui_Strength = CFrame.new(1788.0863, 6771.48926, -1067.94043, -0.866141438, 0, -0.499799222, 0, 1, 0, 0.499799222, 0, -0.866141438)

    -- Endurance
    local TrainArea_Ambulance_100_Endurance = CFrame.new(-761.988831, 79.9294281, -628.8703, 0.999974966, 0.00707819965, -4.79652517e-05, -0.00707819965, 0.999883115, -0.0135521628, -4.79652517e-05, 0.0135521628, 0.999908149)
    local TrainArea_Gym_1K_Endurance = CFrame.new(-747.975037, 70.2737198, -399.940186, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_Warehouse_10K_Endurance = CFrame.new(255.177139, 68.8567352, -312.569763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_Carrier_100K_Endurance = CFrame.new(203.243088, 60.3471756, -222.257751, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_Factory_5M_Endurance = CFrame.new(-631.828735, 81.4721222, -34.80476, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_ToxicFactory_500M_Endurance = CFrame.new(-731.448425, 79.0623398, -52.6747513, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_Quicksand_50B_Endurance = CFrame.new(-1521.15637, 58.5062027, -1990.9646, 0.258864343, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, 0.258864343)
    local TrainArea_DustDevil_30T_Endurance = CFrame.new(-1517.43994, 53.737896, -1721.62439, 0.642909288, 0, 0.765942335, 0, 1, 0, -0.765942335, 0, 0.642909288)
    local TrainArea_Dolphins_10Qa_Endurance = CFrame.new(1281.22644, 44.100174, 833.431213, 0.866007268, -0, -0.500031412, 0, 1, -0, 0.500031412, 0, 0.866007268)
    local TrainArea_Shark_25Qi_Endurance = CFrame.new(798.797729, 54.6644058, 707.896362, 0.866007268, -0, -0.500031412, 0, 1, -0, 0.500031412, 0, 0.866007268)
    local TrainArea_CogsIsland_10Sp_Endurance = CFrame.new(-1858.15515, 60.5384483, 1203.65173, 0.996176779, -0, -0.0873605981, 0, 1, -0, 0.0873605981, 0, 0.996176779)
    local TrainArea_LaserArena_5N_Endurance = CFrame.new(-1620.36755, 48.8777657, 1260.05823, 0.766179383, 0, 0.642626762, 0, 1, 0, -0.642626762, 0, 0.766179383)
    local TrainArea_SpikePit_100Dc_Endurance = CFrame.new(1108.10889, 57.5200424, -1843.27014, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_FirePit_6Dd_Endurance = CFrame.new(1174.52649, 63.3058701, -1980.96948, 0.866007268, -0, -0.500031412, 0, 1, -0, 0.500031412, 0, 0.866007268)
    local TrainArea_Tornado_150Td_Endurance = CFrame.new(54.0154419, 2849.10327, -644.357056, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local TrainArea_Thunderstorm_150Qui_Endurance = CFrame.new(-473.056152, 2786.03809, -477.524567, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    -- Psychic
    local TrainArea_Library_1K_Psychic = CFrame.new(-884.589233, 73.4816666, -434.493225, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    local TrainArea_GoldenBookcase_10K_Psychic = CFrame.new(-891.909363, 102.001686, -467.643311, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    local TrainArea_Sewers_100K_Psychic = CFrame.new(191.212631, 40.4947891, -516.05426, 0.258864343, -0.000242065988, 0.965913713, 3.18743696e-05, 0.99999994, 0.000242065988, -0.965913713, -3.18743696e-05, 0.258864343)
    local TrainArea_DivineTree_5M_Psychic = CFrame.new(-856.850525, 68.4794083, -37.407177, 0.76594317, -8.11138307e-05, -0.642908275, 8.11138307e-05, 1, -2.95302561e-05, 0.642908275, -2.95302561e-05, 0.76594317)
    local TrainArea_Lighthouse_500M_Psychic = CFrame.new(398.095184, 161.872528, -518.162842, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    local TrainArea_MagicWell_50B_Psychic = CFrame.new(-1480.099, 53.9719543, -1908.94897, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
    local TrainArea_Temple_30T_Psychic = CFrame.new(-1420.08557, 53.0846558, -1747.20532, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    local TrainArea_AtlantisTemple_10Qa_Psychic = CFrame.new(999.884277, 54.7395401, 971.198303, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    local TrainArea_Jellyfish_25Qi_Psychic = CFrame.new(1016.28394, 211.225845, 856.947144, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    local TrainArea_Hologram_10Sp_Psychic = CFrame.new(-1945.21936, 94.725174, 472.730011, -0.342141628, 0, -0.93964839, 0, 1, 0, 0.93964839, 0, -0.342141628)
    local TrainArea_UFO_5N_Psychic = CFrame.new(-1671.78015, 310.927795, 786.825256, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    local TrainArea_MeditationArea_100Dc_Psychic = CFrame.new(1317.98022, 60.1830063, -1864.14197, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    local TrainArea_TheWaterfall_6Dd_Psychic = CFrame.new(1016.1394, 56.1301193, -1654.79553, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    local TrainArea_TheGoldenHard_150Td_Psychic = CFrame.new(-592.909119, 2849.88745, -651.798523, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    local TrainArea_AncientRuins_150Qui_Psychic = CFrame.new(-251.192581, 2872.79272, -964.502014, 0, 0, 1, 0, 1, -0, -1, 0, 0)

    -------------------------------------------------- Functions --------------------------------------------------
    -------------------------------------------------- Game --------------------------------------------------
    -- ESP
    function ESP()
        spawn(function()
            if ESPBool == true then
                game.StarterGui:SetCore("SendNotification", {Title = "ESP", Text = "Enabled"})
                for i, v in pairs(workspace:GetChildren()) do
                    if v:FindFirstChild('Humanoid') and v ~= _LocalPlayer.Character and v.Name ~= "Anubis" and v.Name ~= "ZeusNPC" and v.Name ~= "Poseidon" then
                        local highlight = Instance.new('Highlight', v)
                        highlight.FillTransparency = 0
                        highlight.FillColor = Color3.new(255, 0, 255)
                        highlight.OutlineColor = Color3.new(0, 0, 0)
                        v.Head.PG.Size = UDim2.new(0, 200, 0, 50)
                        v.Head.PG.AlwaysOnTop = true
                        v.Head.PG.PlayerNameGui.TextColor3 = Color3.new(255, 0, 255)
                        v.Head.PG.SpecialTag.TextColor3 = Color3.new(255, 0, 255)
                    end
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "ESP", Text = "Disabled"})
                for i, v in pairs(workspace:GetChildren()) do
                    if v:FindFirstChild('Highlight') then
                        v:FindFirstChild('Highlight'):Destroy()
                        v.Head.PG.Size = UDim2.new(4, 0, 1, 0)
                        v.Head.PG.AlwaysOnTop = false
                        v.Head.PG.PlayerNameGui.TextColor3 = Color3.new(255, 255, 255)
                        v.Head.PG.SpecialTag.TextColor3 = Color3.new(255, 255, 255)
                    end
                end
            end
        end)
    end

    -- Join lowest players server
    function ListServers(cursor)
        local Raw = game:HttpGet(_Servers .. ((cursor and "&cursor="..cursor) or ""))
        return HttpService:JSONDecode(Raw)
    end

    -- Auto Claim Daily Deal
    function AutoClaimDailyDeal()
        spawn(function()
            if AutoClaimDailyDealBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Claim Daily Deal", Text = "Enabled"})
                game:GetService("ReplicatedStorage").Events.DailyDeal:FireServer("FreeGift")
                wait(1)
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Claim Daily Deal", Text = "Disabled"})
            end
        end)
    end

    -- Anti AFK
    function AntiAFK()
        spawn(function()
            if AntiAFKBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Anti AFK", Text = "Enabled"})
                _LocalPlayer.Idled:connect(function()
                    if AntiAFKBool then
                        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                        wait(1)
                        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    end
                end)
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Anti AFK", Text = "Disabled"})
            end
        end)
    end

    -------------------------------------------------- Train --------------------------------------------------
    ------------------------- Auto Trian -------------------------
    -- Auto Train Strength
    function AutoTrainStrength()
        spawn(function()
            if AutoTrainStrengthBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Strength", Text = "Enabled"})
                while AutoTrainStrengthBool do
                    game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
                    wait(0.1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Strength", Text = "Disabled"})
            end
        end)
    end

    -- Auto Train Endurance
    function AutoTrainEndurance()
        spawn(function()
            if AutoTrainEnduranceBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Endurance", Text = "Enabled"})
                while AutoTrainEnduranceBool do
                    game:GetService("ReplicatedStorage").Events.Train:FireServer("Endurance")
                    wait(0.1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Endurance", Text = "Disabled"})
            end
        end)
    end

    -- Auto Train Psychic
    function AutoTrainPsychic()
        spawn(function()
            if AutoTrainPsychicBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Psychic", Text = "Enabled"})
                while AutoTrainPsychicBool do
                    game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
                    wait(0.1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Psychic", Text = "Disabled"})
            end
        end)
    end

    -- Auto Train Speed
    function AutoTrainSpeed()
        spawn(function()
            if AutoTrainSpeedBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Speed", Text = "Enabled"})
                while AutoTrainSpeedBool do
                    vu:SetKeyDown('w')
                    wait(0.1)
                    vu:SetKeyUp('w')
                    wait(0.1)
                    vu:SetKeyDown('s')
                    wait(0.1)
                    vu:SetKeyUp('s')
                    wait(0.1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Train Speed", Text = "Disabled"})
            end
        end)
    end

    ------------------------- Auto Upgrade -------------------------
    -- Auto Upgrade Rank
    function AutoUpgradeRank()
        spawn(function()
            if AutoUpgradeRankBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Upgrade Rank", Text = "Enabled"})
                while AutoUpgradeRankBool do
                    game:GetService("ReplicatedStorage").Functions.BuyRank:InvokeServer()
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Upgrade Rank", Text = "Disabled"})
            end
        end)
    end

    -- Auto Upgrade Fusion
    function AutoUpgradeFusion()
        spawn(function()
            if AutoUpgradeFusionBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Upgrade Fusion", Text = "Enabled"})
                while AutoUpgradeFusionBool do
                    game:GetService("ReplicatedStorage").Functions.BuyFusion:InvokeServer()
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Upgrade Fusion", Text = "Disabled"})
            end
        end)
    end

    -- Auto Strength Multiplier
    function AutoStrengthMultiplier()
        spawn(function()
            if AutoStrengthMultiplierBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Strength Multiplier", Text = "Enabled"})
                while AutoStrengthMultiplierBool do
                    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("StrengthMultiplier")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Strength Multiplier", Text = "Disabled"})
            end
        end)
    end

    -- Auto Endurance Multiplier
    function AutoEnduranceMultiplier()
        spawn(function()
            if AutoEnduranceMultiplierBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Endurance Multiplier", Text = "Enabled"})
                while AutoEnduranceMultiplierBool do
                    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("EnduranceMultiplier")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Endurance Multiplier", Text = "Disabled"})
            end
        end)
    end

    -- Auto Psychic Multiplier
    function AutoPsychicMultiplier()
        spawn(function()
            if AutoPsychicMultiplierBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Psychic Multiplier", Text = "Enabled"})
                while AutoPsychicMultiplierBool do
                    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("PsychicMultiplier")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Psychic Multiplier", Text = "Disabled"})
            end
        end)
    end

    -- Auto Speed Multiplier
    function AutoSpeedMultiplier()
        spawn(function()
            if AutoSpeedMultiplierBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Speed Multiplier", Text = "Enabled"})
                while AutoSpeedMultiplierBool do
                    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("SpeedMultiplier")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Speed Multiplier", Text = "Disabled"})
            end
        end)
    end

    -- Auto Chest Luck Multiplier
    function AutoChestLuckMultiplier()
        spawn(function()
            if AutoChestLuckMultiplierBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Chest Luck Multiplier", Text = "Enabled"})
                while AutoChestLuckMultiplierBool do
                    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("LuckMultiplier", 1)
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Chest Luck Multiplier", Text = "Disabled"})
            end
        end)
    end

    -- Auto Chest Speed Multiplier
    function AutoChestSpeedMultiplier()
        spawn(function()
            if AutoChestSpeedMultiplierBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Chest Speed Multiplier", Text = "Enabled"})
                while AutoChestSpeedMultiplierBool do
                    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("ChestSpeedMultiplier", 1)
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Chest Speed Multiplier", Text = "Disabled"})
            end
        end)
    end

    ------------------------- Auto Quests -------------------------
    -- Auto GamesReborn Quests
    function AutoGamesRebornQuest()
        spawn(function()
            if AutoGamesRebornQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto GamesReborn Quests", Text = "Enabled"})
                while AutoGamesRebornQuestBool do
                    game:GetService("ReplicatedStorage").Functions.Quest:InvokeServer("GamesReborn")
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("GamesReborn")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto GamesReborn Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Anubis Quests
    function AutoAnubisQuest()
        spawn(function()
            if AutoAnubisQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Anubis Quests", Text = "Enabled"})
                while AutoAnubisQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("Anubis")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Anubis Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Poseidon Quests
    function AutoPoseidonQuest()
        spawn(function()
            if AutoPoseidonQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Poseidon Quests", Text = "Enabled"})
                while AutoPoseidonQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("Poseidon")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Poseidon Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Daily Strength Quests
    function AutoDailyStrengthQuest()
        spawn(function()
            if AutoDailyStrengthQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Daily Strength Quests", Text = "Enabled"})
                while AutoDailyStrengthQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyStrength")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Daily Strength Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Daily Endurance Quests
    function AutoDailyEnduranceQuest()
        spawn(function()
            if AutoDailyEnduranceQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Daily Endurance Quests", Text = "Enabled"})
                while AutoDailyEnduranceQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyEndurance")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Daily Endurance Quests", Text = "Disabled"})
            end
        end)
    end


    -- Auto Daily Psychic Quests
    function AutoDailyPsychicQuest()
        spawn(function()
            if AutoDailyPsychicQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Daily Psychic Quests", Text = "Enabled"})
                while AutoDailyPsychicQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyPsychic")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Daily Psychic Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Weekly Strength Quests
    function AutoWeeklyStrengthQuest()
        spawn(function()
            if AutoWeeklyStrengthQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Weekly Strength Quests", Text = "Enabled"})
                while AutoWeeklyStrengthQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyStrength")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Weekly Strength Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Weekly Endurance Quests
    function AutoWeeklyEnduranceQuest()
        spawn(function()
            if AutoWeeklyEnduranceQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Weekly Endurance Quests", Text = "Enabled"})
                while AutoWeeklyEnduranceQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyEndurance")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Weekly Endurance Quests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Weekly Psychic Quests
    function AutoWeeklyPsychicQuest()
        spawn(function()
            if AutoWeeklyPsychicQuestBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Weekly Psychic Quests", Text = "Enabled"})
                while AutoWeeklyPsychicQuestBool do
                    game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyPsychic")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Weekly Psychic Quests", Text = "Disabled"})
            end
        end)
    end

    ------------------------- Auto Goals -------------------------
    -- Auto Total Endurance Goal
    function AutoTotalEnduranceGoal()
        spawn(function()
            if AutoTotalEnduranceGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Endurance Goal", Text = "Enabled"})
                while AutoTotalEnduranceGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalEndurance")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Endurance Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Total Strength Goal
    function AutoTotalStrengthGoal()
        spawn(function()
            if AutoTotalStrengthGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Strength Goal", Text = "Enabled"})
                while AutoTotalStrengthGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalStrength")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Strength Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Total Psychic Goal
    function AutoTotalPsychicGoal()
        spawn(function()
            if AutoTotalPsychicGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Psychic Goal", Text = "Enabled"})
                while AutoTotalPsychicGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalPsychic")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Psychic Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Total Speed Goal
    function AutoTotalSpeedGoal()
        spawn(function()
            if AutoTotalSpeedGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Speed Goal", Text = "Enabled"})
                while AutoTotalSpeedGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalSpeed")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Speed Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Total Tokens Goal
    function AutoTotalTokensGoal()
        spawn(function()
            if AutoTotalTokensGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Tokens Goal", Text = "Enabled"})
                while AutoTotalTokensGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalTokens")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Tokens Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Total Gems Goal
    function AutoTotalGemsGoal()
        spawn(function()
            if AutoTotalGemsGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Gems Goal", Text = "Enabled"})
                while AutoTotalGemsGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalGems")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Total Gems Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Quests Completed Goal
    function AutoQuestsCompletedGoal()
        spawn(function()
            if AutoQuestsCompletedGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Quests Completed Goal", Text = "Enabled"})
                while AutoQuestsCompletedGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("QuestsCompleted")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Quests Completed Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Time Played Goal
    function AutoTimePlayedGoal()
        spawn(function()
            if AutoTimePlayedGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Time Played Goal", Text = "Enabled"})
                while AutoTimePlayedGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TimePlayed")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Time Played Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Chests Opened Goal
    function AutoChestsOpenedGoal()
        spawn(function()
            if AutoChestsOpenedGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Chests Opened Goal", Text = "Enabled"})
                while AutoChestsOpenedGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("ChestsOpened")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Chests Opened Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Enemy Kills Goal
    function AutoEnemyKillsGoal()
        spawn(function()
            if AutoEnemyKillsGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Enemy Kills Goal", Text = "Enabled"})
                while AutoEnemyKillsGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("EnemyKills")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Enemy Kills Goal", Text = "Disabled"})
            end
        end)
    end

    -- Auto Boss Kills Goal
    function AutoBossKillsGoal()
        spawn(function()
            if AutoBossKillsGoalBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Boss Kills Goal", Text = "Enabled"})
                while AutoBossKillsGoalBool do
                    game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("BossKills")
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Boss Kills Goal", Text = "Disabled"})
            end
        end)
    end

    ------------------------- Train Areas -------------------------
    -- Teleport
    function TeleportTo(TrainArea)
        local player = game.Players.LocalPlayer
        if player.Character then
            player.Character.HumanoidRootPart.CFrame = TrainArea
        end
    end

    -- Auto Redeem All Chests
    function AutoRedeemAllChests()
        spawn(function()
            if AutoRedeemAllChestsBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Redeem All Chests", Text = "Enabled"})
                local player = game.Players.LocalPlayer.Character.HumanoidRootPart
                while true do
                    for i, v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
                        if v.Name == 'TouchInterest' and v.Parent.Parent.Name ~= 'Premium' then
                            firetouchinterest(v.Parent, player, 0)
                            wait(3)
                            firetouchinterest(v.Parent, player, 1)
                        end
                    end
                    wait(1)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Redeem All Chests", Text = "Disabled"})
            end
        end)
    end

    -- Auto Claim MiniChests
    function AutoClaimMiniChests()
        spawn(function()
            if AutoClaimMiniChestsBool then
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Claim MiniChests", Text = "Enabled"})
                while AutoClaimMiniChestsBool do
                    for i, v in pairs(game:GetService("Workspace").MiniChests:GetDescendants()) do
                        if v.Name == 'ClickDetector' then
                            fireclickdetector(v)
                        end
                    end
                    wait(60)
                end
            else
                game.StarterGui:SetCore("SendNotification", {Title = "Auto Claim MiniChests", Text = "Disabled"})
            end
        end)
    end

    -------------------------------------------------- Game --------------------------------------------------
    -- Anti AFK
    GameSection:Toggle("Anti AFK", false, function(bool)
        AntiAFKBool = bool
        AntiAFK()
    end)

    -- Rejoin
    GameSection:Button("Rejoin Server", function()
        TeleportService:Teleport(game.PlaceId, Player)
    end)

    -- Join lowest players server
    GameSection:Button("Join Lowest Players Server", function()
        local Server, Next; repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server
        
        TeleportService:TeleportToPlaceInstance(_PlaceId,Server.id,game.Players.LocalPlayer)
    end)

    -- Redeem all codes
    GameSection:Button("Redeem All Codes", function()
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("2MGROUP")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("FROSTLORD")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("WINTERUPDATE")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("HAPPYNEWYEAR")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("FESTIVEBOOST")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("ULTRAPOWER")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("150KLIKES")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("500KFAVORITES")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("150MPARTY")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("SUPERLUCK")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("JAKDNOOB")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("JJD7")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("PIEOVER")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("REKTWAY")
            game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer("XBUTTERFLIES")
    end)

    -- Break Barrier
    GameSection:Button("Break Barriers", function()
        game.StarterGui:SetCore("SendNotification", {Title = "Barriers Destroyed", Text = ""})
        while wait() do
            game:GetService("Workspace")["Map Sand / Barrier"]["Desert Barrier"].CanCollide = false
            game:GetService("Workspace")["Map Sand / Barrier"]["LostSea Barrier"].CanCollide = false
            game:GetService("Workspace")["Map Sand / Barrier"]["Prison Barrier"].CanCollide = false
            game:GetService("Workspace")["Map Sand / Barrier"]["Ninja Barrier"].CanCollide = false
        end
    end)

    -- Auto Redeem All Chests
    GameSection:Toggle("Auto Redeem All Chests", false, function(bool)
        AutoRedeemAllChestsBool = bool
        AutoRedeemAllChests()
    end)

    -- Auto Claim MiniChests
    GameSection:Toggle("Auto Claim MiniChests", false, function(bool)
        AutoClaimMiniChestsBool = bool
        AutoClaimMiniChests()
    end)

    -- Auto Claim Daily Deal
    GameSection:Toggle("Auto Claim Daily Deal", false, function(bool)
        AutoClaimDailyDealBool = bool
        AutoClaimDailyDeal()
    end)

    -- ESP
    GameSection:KeyBind("ESP", Enum.KeyCode.RightControl, function()
        if ESPBool == false then
            ESPBool = true
        else
            ESPBool = false
        end
        wait()
        ESP()
    end)

    GameSection:TextBox("Walk Speed", "Set", function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Text
        game.StarterGui:SetCore("SendNotification", {Title = "Walk Speed", Text = Text})
    end)


    GameSection:TextBox("Jump Power", "Set", function(Text)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Text
        game.StarterGui:SetCore("SendNotification", {Title = "Jump Power", Text = Text})
    end)

    GameSection:TextBox("Fly Speed", "Set", function(Text)
        game:GetService("Players")["M7ilan_SA"].leaderstats.extrastats.FlySpeed.Value = Text
        game.StarterGui:SetCore("SendNotification", {Title = "Jump Power", Text = Text})
    end)

    -------------------------------------------------- Train --------------------------------------------------
    ------------------------- Auto Train -------------------------
    -- Auto Train Strength
    AutoTrainSection:Toggle("Auto Strength", false, function(bool)
        AutoTrainStrengthBool = bool
        AutoTrainStrength()
    end)

    -- Auto Train Endurance
    AutoTrainSection:Toggle("Auto Endurance", false, function(bool)
        AutoTrainEnduranceBool = bool
        AutoTrainEndurance()
    end)

    -- Auto Train Psychic
    AutoTrainSection:Toggle("Auto Pyschic", false, function(bool)
        AutoTrainPsychicBool = bool
        AutoTrainPsychic()
    end)

    -- Auto Train Speed
    AutoTrainSection:Toggle("Auto Speed", false, function(bool)
        AutoTrainSpeedBool = bool
        AutoTrainSpeed()
    end)

    ------------------------- Auto Upgrade -------------------------
    -- Auto Upgrade Rank
    AutoUpgradeSection:Toggle("Auto Upgrade Rank", false, function(bool)
        AutoUpgradeRankBool = bool
        AutoUpgradeRank()
    end)

    -- Auto Upgrade Fusion
    AutoUpgradeSection:Toggle("Auto Upgrade Fusion", false, function(bool)
        AutoUpgradeFusionBool = bool
        AutoUpgradeFusion()
    end)

    -- Auto Strength Multiplier
    AutoUpgradeSection:Toggle("Auto Strength Multiplier", false, function(bool)
        AutoStrengthMultiplierBool = bool
        AutoStrengthMultiplier()
    end)

    -- Auto Endurance Multiplier
    AutoUpgradeSection:Toggle("Auto Endurance Multiplier", false, function(bool)
        AutoEnduranceMultiplierBool = bool
        AutoEnduranceMultiplier()
    end)

    -- Auto Psychic Multiplier
    AutoUpgradeSection:Toggle("Auto Psychic Multiplier", false, function(bool)
        AutoPsychicMultiplierBool = bool
        AutoPsychicMultiplier()
    end)

    -- Auto Speed Multiplier
    AutoUpgradeSection:Toggle("Auto Speed Multiplier", false, function(bool)
        AutoSpeedMultiplierBool = bool
        AutoSpeedMultiplier()
    end)

    -- Auto Luck Multiplier
    AutoUpgradeSection:Toggle("Auto Luck Multiplier", false, function(bool)
        AutoChestLuckMultiplierBool = bool
        AutoChestLuckMultiplier()
    end)

    -- Auto Chest Speed Multiplier
    AutoUpgradeSection:Toggle("Auto Chest Speed Multiplier", false, function(bool)
        AutoChestSpeedMultiplierBool = bool
        AutoChestSpeedMultiplier()
    end)

    ------------------------- Auto Quests -------------------------
    -- Auto GamesReborn Quests
    AutoMainQuestsSection:Toggle("Auto GamesReborn Quests", false, function(bool)
        AutoGamesRebornQuestBool = bool
        AutoGamesRebornQuest()
    end)

    -- Auto Anubis Quests
    AutoMainQuestsSection:Toggle("Auto Anubis Quests", false, function(bool)
        AutoAnubisQuestBool = bool
        AutoAnubisQuest()
    end)

    -- Auto Poseidon Quests
    AutoMainQuestsSection:Toggle("Auto Poseidon Quests", false, function(bool)
        AutoPoseidonQuestBool = bool
        AutoPoseidonQuest()
    end)

    -- Auto Daily Strength Quests
    AutoDailyQuestsSection:Toggle("Auto Daily Strength Quests", false, function(bool)
        AutoDailyStrengthQuestBool = bool
        AutoDailyStrengthQuest()
    end)

    -- Auto Daily Endurance Quests
    AutoDailyQuestsSection:Toggle("Auto Daily Endurance Quests", false, function(bool)
        AutoDailyEnduranceQuestBool = bool
        AutoDailyEnduranceQuest()
    end)

    -- Auto Daily Psychic Quests
    AutoDailyQuestsSection:Toggle("Auto Daily Psychic Quests", false, function(bool)
        AutoDailyPsychicQuestBool = bool
        AutoDailyPsychicQuest()
    end)

    -- Auto Weekly Strength Quests
    AutoWeeklyQuestsSection:Toggle("Auto Weekly Strength Quests", false, function(bool)
        AutoWeeklyStrengthQuestBool = bool
        AutoWeeklyStrengthQuest()
    end)

    -- Auto Weekly Endurance Quests
    AutoWeeklyQuestsSection:Toggle("Auto Weekly Endurance Quests", false, function(bool)
        AutoWeeklyEnduranceQuestBool = bool
        AutoWeeklyEnduranceQuest()
    end)

    -- Auto Weekly Psychic Quests
    AutoWeeklyQuestsSection:Toggle("Auto Weekly Psychic Quests", false, function(bool)
        AutoWeeklyPsychicQuestBool = bool
        AutoWeeklyPsychicQuest()
    end)

    ------------------------- Auto Goals -------------------------

    -- Auto Total Endurance Goal
    AutoGoalsSection:Toggle("Auto Total Endurance Goal", false, function(bool)
        AutoTotalEnduranceGoalBool = bool
        AutoTotalEnduranceGoal()
    end)

    -- Auto Total Strength Goal
    AutoGoalsSection:Toggle("Auto Total Strength Goal", false, function(bool)
        AutoTotalStrengthGoalBool = bool
        AutoTotalStrengthGoal()
    end)

    -- Auto Total Psychic Goal
    AutoGoalsSection:Toggle("Auto Total Psychic Goal", false, function(bool)
        AutoTotalPsychicGoalBool = bool
        AutoTotalPsychicGoal()
    end)

    -- Auto Total Speed Goal
    AutoGoalsSection:Toggle("Auto Total Speed Goal", false, function(bool)
        AutoTotalSpeedGoalBool = bool
        AutoTotalSpeedGoal()
    end)

    -- Auto Total Tokens Goal
    AutoGoalsSection:Toggle("Auto Total Tokens Goal", false, function(bool)
        AutoTotalTokensGoalBool = bool
        AutoTotalTokensGoal()
    end)

    -- Auto Total Gems Goal
    AutoGoalsSection:Toggle("Auto Total Gems Goal", false, function(bool)
        AutoTotalGemsGoalBool = bool
        AutoTotalGemsGoal()
    end)

    -- Auto Quests Completed Goal
    AutoGoalsSection:Toggle("Auto Quests Completed Goal", false, function(bool)
        AutoQuestsCompletedGoalBool = bool
        AutoQuestsCompletedGoal()
    end)

    -- Auto Time Played Goal
    AutoGoalsSection:Toggle("Auto Time Played Goal", false, function(bool)
        AutoTimePlayedGoalBool = bool
        AutoTimePlayedGoal()
    end)

    -- Auto Chests Opened Goal
    AutoGoalsSection:Toggle("Auto Chests Opened Goal", false, function(bool)
        AutoChestsOpenedGoalBool = bool
        AutoChestsOpenedGoal()
    end)

    -- Auto Enemy Kills Goal
    AutoGoalsSection:Toggle("Auto Enemy Kills Goal", false, function(bool)
        AutoEnemyKillsGoalBool = bool
        AutoEnemyKillsGoal()
    end)

    -- Auto Boss Kills Goal
    AutoGoalsSection:Toggle("Auto Boss Kills Goal", false, function(bool)
        AutoBossKillsGoalBool = bool
        AutoBossKillsGoal()
    end)

    ------------------------- Train Areas -------------------------
    -- Strength --
    StrengthAreasSection:Button("100 Strength Required \n x2 Strength Boost ", function()
        TeleportTo(TrainArea_Rock_100_Strength)
    end)

    StrengthAreasSection:Button("1K Strength Required \n x5 Strength Boost ", function()
        TeleportTo(TrainArea_PunchingBag_1K_Strength)
    end)

    StrengthAreasSection:Button("10K Strength Required \n x20 Strength Boost ", function()
        TeleportTo(TrainArea_Car_10K_Strength)
    end)

    StrengthAreasSection:Button("100K Strength Required \n x100 Strength Boost ", function()
        TeleportTo(TrainArea_Construction_100K_Strength)
    end)

    StrengthAreasSection:Button("5M Strength Required \n x750 Strength Boost ", function()
        TeleportTo(TrainArea_Meteor_5M_Strength)
    end)

    StrengthAreasSection:Button("500M Strength Required \n x10K Strength Boost ", function()
        TeleportTo(TrainArea_Crystals_500M_Strength)
    end)

    StrengthAreasSection:Button("50B Strength Required \n x120K Strength Boost ", function()
        TeleportTo(TrainArea_Scorpions_50B_Strength)
    end)

    StrengthAreasSection:Button("30T Strength Required \n x3M Strength Boost ", function()
        TeleportTo(TrainArea_Sphinx_30T_Strength)
    end)

    StrengthAreasSection:Button("10Qa Strength Required \n x100M Strength Boost ", function()
        TeleportTo(TrainArea_Pearl_10Qa_Strength)
    end)

    StrengthAreasSection:Button("25Qi Strength Required \n x3B Strength Boost ", function()
        TeleportTo(TrainArea_Statue_25Qi_Strength)
    end)

    StrengthAreasSection:Button("10Sp Strength Required \n x90B Strength Boost ", function()
        TeleportTo(TrainArea_SmallRobot_10Sp_Strength)
    end)

    StrengthAreasSection:Button("5N Strength Required \n x2.5T Strength Boost ", function()
        TeleportTo(TrainArea_RockGiant_5N_Strength)
    end)

    StrengthAreasSection:Button("100Dc Strength Required \n x75T Strength Boost ", function()
        TeleportTo(TrainArea_NinjaTrainingZone_100Dc_Strength)
    end)

    StrengthAreasSection:Button("6Dd Strength Required \n x2.25Qa Strength Boost ", function()
        TeleportTo(TrainArea_UltimateDojo_6Dd_Strength)
    end)

    StrengthAreasSection:Button("150Td Strength Required \n x75Qa Strength Boost ", function()
        TeleportTo(TrainArea_BluePlanet_150Td_Strength)
    end)

    StrengthAreasSection:Button("150Qui Strength Required \n x3Qi Strength Boost ", function()
        TeleportTo(TrainArea_RedPlanet_150Qui_Strength)
    end)

    -------------------------------------------------- Endurance --------------------------------------------------
    EnduranceAreasSection:Button("100 Endurance Required \n x2 Endurance Boost ", function()
        TeleportTo(TrainArea_Ambulance_100_Endurance)
    end)

    EnduranceAreasSection:Button("1K Endurance Required \n x5 Endurance Boost ", function()
        TeleportTo(TrainArea_Gym_1K_Endurance)
    end)

    EnduranceAreasSection:Button("10K Endurance Required \n x20 Endurance Boost ", function()
        TeleportTo(TrainArea_Warehouse_10K_Endurance)
    end)

    EnduranceAreasSection:Button("100K Endurance Required \n x100 Endurance Boost ", function()
        TeleportTo(TrainArea_Carrier_100K_Endurance)
    end)

    EnduranceAreasSection:Button("5M Endurance Required \n x750 Endurance Boost ", function()
        TeleportTo(TrainArea_Factory_5M_Endurance)
    end)

    EnduranceAreasSection:Button("500M Endurance Required \n x10K Endurance Boost ", function()
        TeleportTo(TrainArea_ToxicFactory_500M_Endurance)
    end)

    EnduranceAreasSection:Button("50B Endurance Required \n x120K Endurance Boost ", function()
        TeleportTo(TrainArea_Quicksand_50B_Endurance)
    end)

    EnduranceAreasSection:Button("30T Endurance Required \n x3M Endurance Boost ", function()
        TeleportTo(TrainArea_DustDevil_30T_Endurance)
    end)

    EnduranceAreasSection:Button("10Qa Endurance Required \n x100M Endurance Boost ", function()
        TeleportTo(TrainArea_Dolphins_10Qa_Endurance)
    end)

    EnduranceAreasSection:Button("25Qi Endurance Required \n x3B Endurance Boost ", function()
        TeleportTo(TrainArea_Shark_25Qi_Endurance)
    end)

    EnduranceAreasSection:Button("10Sp Endurance Required \n x90B Endurance Boost ", function()
        TeleportTo(TrainArea_CogsIsland_10Sp_Endurance)
    end)

    EnduranceAreasSection:Button("5N Endurance Required \n x2.5T Endurance Boost ", function()
        TeleportTo(TrainArea_LaserArena_5N_Endurance)
    end)

    EnduranceAreasSection:Button("100Dc Endurance Required \n 100Dc Endurance Boost ", function()
        TeleportTo(TrainArea_SpikePit_100Dc_Endurance)
    end)

    EnduranceAreasSection:Button("6Dd  Endurance Required \n x2.25Qa Endurance Boost ", function()
        TeleportTo(TrainArea_FirePit_6Dd_Endurance)
    end)

    EnduranceAreasSection:Button("150Td Endurance Required \n 150Td Endurance Boost ", function()
        TeleportTo(TrainArea_Tornado_150Td_Endurance)
    end)

    EnduranceAreasSection:Button("150Qui Endurance Required \n x3Qi Endurance Boost ", function()
        TeleportTo(TrainArea_Thunderstorm_150Qui_Endurance)
    end)



    -------------------------------------------------- Psychic --------------------------------------------------
    PsychicAreasSection:Button("1K Psychic Required \n x5 Psychic Boost ", function()
        TeleportTo(TrainArea_Library_1K_Psychic)
    end)

    PsychicAreasSection:Button("10K Psychic Required \n x20 Psychic Boost ", function()
        TeleportTo(TrainArea_GoldenBookcase_10K_Psychic)
    end)

    PsychicAreasSection:Button("100K Psychic Required \n x100 Psychic Boost ", function()
        TeleportTo(TrainArea_Sewers_100K_Psychic)
    end)

    PsychicAreasSection:Button("5M Psychic Required \n x750 Psychic Boost ", function()
        TeleportTo(TrainArea_DivineTree_5M_Psychic)
    end)

    PsychicAreasSection:Button("500M Psychic Required \n x10K Psychic Boost ", function()
        TeleportTo(TrainArea_Lighthouse_500M_Psychic)
    end)

    PsychicAreasSection:Button("50B Psychic Required \n x120K Psychic Boost ", function()
        TeleportTo(TrainArea_MagicWell_50B_Psychic)
    end)

    PsychicAreasSection:Button("30T Psychic Required \n x3M Psychic Boost ", function()
        TeleportTo(TrainArea_Temple_30T_Psychic)
    end)

    PsychicAreasSection:Button("10Qa Psychic Required \n x100M Psychic Boost ", function()
        TeleportTo(TrainArea_AtlantisTemple_10Qa_Psychic)
    end)

    PsychicAreasSection:Button("25Qi Psychic Required \n x3B Psychic Boost ", function()
        TeleportTo(TrainArea_Jellyfish_25Qi_Psychic)
    end)

    PsychicAreasSection:Button("10Sp Psychic Required \n x90B Psychic Boost ", function()
        TeleportTo(TrainArea_Hologram_10Sp_Psychic)
    end)

    PsychicAreasSection:Button("5N Psychic Required \n x2.5T Psychic Boost ", function()
        TeleportTo(TrainArea_UFO_5N_Psychic)
    end)

    PsychicAreasSection:Button("100Dc Psychic Required \n x75T Psychic Boost ", function()
        TeleportTo(TrainArea_MeditationArea_100Dc_Psychic)
    end)

    PsychicAreasSection:Button("6Dd Psychic Required \n x2.25Qa Psychic Boost ", function()
        TeleportTo(TrainArea_TheWaterfall_6Dd_Psychic)
    end)

    PsychicAreasSection:Button("150Td Psychic Required \n x75Qa Psychic Boost ", function()
        TeleportTo(TrainArea_TheGoldenHard_150Td_Psychic)
    end)

    PsychicAreasSection:Button("150Qui Psychic Required \n x3Qi Psychic Boost ", function()
        TeleportTo(TrainArea_AncientRuins_150Qui_Psychic)
    end)



    -- Destroy UI
    SettingsSection:Button("Destroy UI", function()
        DestroyGUI()
    end)

    -- Reload UI
    SettingsSection:Button("Reload UI", function()
        ReloadGUI()
    end)
end

function Reset()
    -- Game
    ESPBool = false
    for i, v in pairs(workspace:GetChildren()) do
        if v:FindFirstChild('Highlight') then
            v:FindFirstChild('Highlight'):Destroy()
        end
    end
    -- Game
    ESPBool = false
    AutoRedeemAllChestsBool = false
    AutoClaimMiniChestsBool = false
    AutoClaimDailyDealBool = false
    AntiAFKBool = false

    -- Auto Train
    AutoTrainStrengthBool = false
    AutoTrainEnduranceBool = false
    AutoTrainPsychicBool = false
    AutoTrainSpeedBool = false

    -- Auto Upgrade
    AutoUpgradeRankBool = false
    AutoUpgradeFusionBool = false
    AutoStrengthMultiplierBool = false
    AutoEnduranceMultiplierBool = false
    AutoPsychicMultiplierBool = false
    AutoSpeedMultiplierBool = false
    AutoLuckMultiplierBool = false
    AutoChestSpeedMultiplierBool = false

    -- Auto Quests
    AutoDailyStrengthQuestBool = false
    AutoDailyEnduranceQuestBool = false
    AutoDailyPsychicQuestBool = false
    AutoWeeklyStrengthQuestBool = false
    AutoWeeklyEnduranceQuestBool = false
    AutoWeeklyPsychicQuestBool = false
    AutoGamesRebornQuestBool = false
    AutoAnubisQuestBool = false
    AutoPoseidonQuestBool = false

    -- Auto Goals
    AutoTotalEnduranceGoalBool = false
    AutoTotalStrengthGoalBool = false
    AutoTotalPsychicGoalBool = false
    AutoTotalSpeedGoalBool = false
    AutoTotalTokensGoalBool = false
    AutoTotalGemsGoalBool = false
    AutoQuestsCompletedGoalBool = false
    AutoTimePlayedGoalBool = false
    AutoChestsOpenedGoalBool = false
    AutoEnemyKillsGoalBool = false
    AutoBossKillsGoalBool = false
end

function ReloadGUI()
    Reset()
    DestroyGUI()
    M7LibSpawner()
end

function DestroyGUI()
    Reset()
    game:GetService("CoreGui")["M7LibSuper Power"]:Destroy()
end

if game:GetService("CoreGui"):FindFirstChild("M7LibSuper Power") then
    DestroyGUI()
    M7LibSpawner()
else
    M7LibSpawner()
end


game.StarterGui:SetCore("SendNotification", {Title = "The Script Fully Loaded", Text = ""})
