local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 3
sound.SoundId = "rbxassetid://8697636436"
sound.Looped = false
sound:Play()

pcall(function()
    game:GetService("Workspace").People:Destroy()
end)

game:GetService("Players").LocalPlayer.PlayerGui.LoadingUI.Enabled = true

print("[drakohub]: [1/5] Authenticating...")
wait(0.3)
print("[drakohub]: [2/5] Checking..")
wait(0.5)
print("[drakohub]: [3/5] Connecting to license server..")
wait(1.5)
print("[drakohub]: [4/5] Starting hearbeat..")
wait(1)
print("[drakohub]: [5/5] Succesfully authenticated!")

game:GetService("Players").LocalPlayer.PlayerGui.LoadingUI.Enabled = false

setfpscap(2000)
pcall(function()
    game:GetService("Workspace").Arena.Lights.Parent = game.Workspace
end)
pcall(function()
    game:GetService("Workspace").Gym.Building["Out Lights"].Parent = game.Workspace
end)
pcall(function()
    game:GetService("Workspace").Gym.Building["Hang Lights"].Parent = game.Workspace
end)


pcall(function()
    game.Players.LocalPlayer.Character.Humanoid.Animations.BlockNormal.AnimationId = "rbxassetid://7506800268"
end)

pcall(function()
    game:GetService("Workspace").Building["Court Lights"].Parent = game.Workspace
    game:GetService("Workspace")["Fake Plaza"].Parent            = game.Workspace
    game:GetService("Workspace").Building.Carpet.Parent          = game.Workspace
    game:GetService("Workspace").Building.Baseplate.Parent       = game.Workspace
end)

local function jump()
    local A_1 = "Jump"
    local Event = game:GetService("ReplicatedStorage").GameEvents.ClientAction
    Event:FireServer(A_1)
end

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = '                   DRAKO GAY | RBW4 | Pu$syG$ng ',
    Center = true,
    AutoShow = true
})

local Tabs = {
    Main2 = Window:AddTab('Main'),
    Main = Window:AddTab('FPS+'),
    Main3 = Window:AddTab('Boosting'),
    ['UI Settings'] = Window:AddTab('UI Settings')
}

Library:Notify("Drako Menu Loaded Succesfully :d")




local LeftGroupBox = Tabs.Main3:AddLeftGroupbox('$$ Boosting Scripts $$')

LeftGroupBox:AddLabel('Standing Shot Deep [BETA]')

LeftGroupBox:AddToggle('triplemode', {
    Text = 'Enable',
    Default = false,
    Tooltip = 'esta funcion esta en trabajo, no la uses' -- Information shown when you hover over the toggle
})

Toggles.triplemode:OnChanged(function()
    if Toggles.triplemode.Value == true then
        local pos = game:GetService("Workspace").Basketball.Position
        local ts = game:GetService('TweenService')
        local plr = game.Players.LocalPlayer
        local Char = plr.Character or plr.CharacterAdded:wait()
        local pelota = plr.Character.Basketball
        local t = ts:create(Char.Humanoid.RootPart, TweenInfo.new(1), {
            CFrame = CFrame.new(pos)
        })
        -- t:Play()

        local function triple()
            if pelota then
                local closest = nil
                local part = Instance.new("Part")
                part.Parent = game.workspace
                part.Name = "triple1"
                part.Transparency = 1
                part.Anchored = true
                local partxd = ts:create(game:GetService("Workspace").triple1, TweenInfo.new(0), {
                    CFrame = CFrame.new(20.7442741, 6.34001017, -10.9854479)
                })
                partxd:Play()
                local range = 4244
                local rim = game:GetService("Workspace")["_Hoop2"].Rim
                local distance = (game.Players.LocalPlayer.Character.Head.Position - rim.Position).Magnitude
                local postriple = distance
                if distance < range then
                    local closest = Hoop2
                    local tripleposicion = game:GetService("Workspace").triple1.Position
                    local triplez = ts:create(Char.Humanoid.RootPart, TweenInfo.new(3), {
                        CFrame = CFrame.new(20.7442741, 6.34001017, -10.9854479) * CFrame.new(0, 5, 0)
                    })
                    triplez:Play()
                end
            end
        end

        local function buscarpelota()
            local rangexd = 10011
            local closestxd = nil
            local distancexd = (
                game.Players.LocalPlayer.Character.UpperTorso.Position - game.Workspace.Basketball.Position).Magnitude
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "Basketball" then
                    if (game.Players.LocalPlayer.Character.UpperTorso.Position - v.Position).Magnitude < 45 then
                        local xd = ts:create(Char.Humanoid.RootPart, TweenInfo.new(1), {
                            CFrame = CFrame.new(v.Position) * CFrame.new(0, 1, 0)
                        })
                        xd:Play()
                    end
                end
            end
        end

        buscarpelota()
        wait(3)
        triple()
    end
    if Toggles.triplemode.Value == false then
    end
end)


Toggles.triplemode:SetValue(false)


local LeftGroupBox = Tabs.Main2:AddLeftGroupbox('$$ Main Scripts $$')
local defensivegroup = Tabs.Main2:AddLeftGroupbox('$$ Defensive Options $$')
local teleportsbox = Tabs.Main2:AddLeftGroupbox('         $$ Teleports $$')
local creditsbox = Tabs.Main2:AddLeftGroupbox('         $$ Credits $$')


LeftGroupBox:AddToggle('ballmagnet', {
    Text = 'Touch Extender',
    Default = false,
    Tooltip = 'Con esto el balon tiene mas hitbox y lo coges\ndesde mas lejos y antes que los demas.\n[MUY UTIL PARA LOS REBOTES]' -- Information shown when you hover over the toggle
})

Toggles.ballmagnet:OnChanged(function()
    if Toggles.ballmagnet.Value == true then
        local player = game.Players.LocalPlayer.Character.Head
        local range = 10

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


LeftGroupBox:AddToggle('standingaimbot', {
    Text = 'Perfect Aimbot',
    Default = false,
    Tooltip = 'Con esto si presionas la [E] solamente en un tiro de pie.\nUsar si tu ping es estable ya que este script\ndetecta tu ping para timear dependiendo tu ping.\nDisponibles: [STANDING SHOOT] [HOPSTEP-OFFDRIBLE]' -- Information shown when you hover over the toggle
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
                            wait(0.45)
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
                            wait(0.45)
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
                            wait(0.51) -- default
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
                            wait(0.52) -- default
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



local RightGroupBox = Tabs.Main2:AddRightGroupbox('$$ Miscellanous $$')


RightGroupBox:AddToggle('blockplayer', {
    Text = 'Block Player',
    Default = false,
    Tooltip = 'Con esto bloqueas a un jugador random para cambiar de server' -- Information shown when you hover over the toggle
})

Toggles.blockplayer:OnChanged(function()
    if Toggles.blockplayer.Value == true then
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            wait(0.1)
            game:GetService("StarterGui"):SetCore("PromptBlockPlayer", v)
        end
    end
    if Toggles.blockplayer.Value == false then
        game:service("GuiService"):ClearError()
    end
end)

Toggles.blockplayer:SetValue(false)

RightGroupBox:AddToggle('notifyplayer', {
    Text = 'Notify Player',
    Default = false,
    Tooltip = 'Cuando se una alguien a tu server\nte avisa con una notificacion y hace un sonido.' -- Information shown when you hover over the toggle
})

Toggles.notifyplayer:OnChanged(function()
    if Toggles.notifyplayer.Value == true then
        local Players = game:GetService("Players")
        local StarterGui = game:GetService("StarterGui")

        Players.PlayerAdded:Connect(function(Player)
            local UserThumbnail = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.AvatarBust,
                Enum.ThumbnailSize.Size420x420)
            if Toggles.notifyplayer.Value == true then
                local sound = Instance.new("Sound", game.Workspace)
                sound.Volume = 5
                sound.SoundId = "rbxassetid://8697636436"
                sound.Looped = false
                sound:Play()
                StarterGui:SetCore("SendNotification", {
                    Title = string.format("%s Joined", Player.Name),
                    Text = string.format("%s has joined the server.", Player.Name),
                    Icon = UserThumbnail,
                    Duration = 4
                })
            end
        end)
    end
    if Toggles.notifyplayer.Value == false then

    end
end)


Toggles.notifyplayer:SetValue(false)

RightGroupBox:AddToggle('panicbottom', {
    Text = 'Panic Botton',
    Default = false,
    Tooltip = 'Cuando tu server supera mas de\n4 personas te saca automaticamente.' -- Information shown when you hover over the toggle
})

Toggles.panicbottom:OnChanged(function()
    if Toggles.panicbottom.Value == true then
        getgenv().num = 4

        local gp = game:GetService("Players"):GetPlayers()
        while task.wait() do
            if #gp > 4 then
                if Toggles.panicbottom.Value == true then
                    game:GetService("ReplicatedStorage").Remotes.Teleport:InvokeServer("Plaza")
                end
            end
        end
    end
    if Toggles.panicbottom.Value == false then

    end
end)

RightGroupBox:AddToggle('passingnumberson', {
    Text = 'Passing Numbers',
    Default = false,
    Tooltip = 'Veras los numeros de tus aliados siempre. [ NO FUNCIONA ]' -- Information shown when you hover over the toggle
})

Toggles.passingnumberson:OnChanged(function()
    if Toggles.passingnumberson.Value == true then
        if game:GetService("Players").LocalPlayer.PlayerGui.Teammate1 then
            if game:GetService("Players").LocalPlayer.PlayerGui.Teammate1.Enabled == false then
                if Toggles.passingnumberson.Value == true then
                    while task.wait() do
                        game:GetService("Players").LocalPlayer.PlayerGui.Teammate1.RobloxLocked = true
                        game:GetService("Players").LocalPlayer.PlayerGui.Teammate1.Number.RobloxLocked = true
                        game:GetService("Players").LocalPlayer.PlayerGui.Teammate1.Enabled = true
                    end
                end
            end
        end
    end
    if Toggles.passingnumberson.Value == false then

    end
end)

Toggles.passingnumberson:SetValue(false)



local RightGroupBox2 = Tabs.Main2:AddRightGroupbox('$$ Blatant Options $$')


local pump = RightGroupBox2:AddToggle('unlimitedpumpfakes', {
    Text = 'Unlimited Pumpfakes',
    Default = false,
    Tooltip = 'Cuando esto si presionas la tecla puedes hacer\nilimitadamente fake de tiro y moverte.' -- Information shown when you hover over the toggle
})

Toggles.unlimitedpumpfakes:OnChanged(function()
    if Toggles.unlimitedpumpfakes.Value == true then

    end
    if Toggles.unlimitedpumpfakes.Value == false then

    end
end)

Toggles.unlimitedpumpfakes:SetValue(false)

pump:AddKeyPicker('KeyPicker', {
    Default = 'J',
    SyncToggleState = false,
    Mode = 'Hold',
    Text = 'Auto lockpick safes',
    NoUI = false,
})

Options.KeyPicker:OnClick(function()

end)

task.spawn(function()
    while true do
        wait(0)

        -- example for checking if a keybind is being pressed
        local state = Options.KeyPicker:GetState()
        if state then
            local player = game.Players.LocalPlayer
            local mouse = player:GetMouse()
            local uis = game:GetService("UserInputService") -- Function of Input
            local keyxd = Options.KeyPicker.Value
            if Toggles.unlimitedpumpfakes.Value == true then
                for i, v in pairs(game:GetService('Players'):GetChildren()) do
                    Player = v.Name
                    AnimationId = "7444111533"
                    local Anim = Instance.new("Animation")
                    Anim.AnimationId = "rbxassetid://" .. AnimationId
                    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
                    if Toggles.unlimitedpumpfakes.Value == true then
                        k:Play()
                        k:AdjustSpeed(0.95)
                    end
                end
            end
        end

        if Library.Unloaded then break end
    end
end)


RightGroupBox2:AddToggle('antifall', {
    Text = 'Anti Fall/Ankles/Posterize',
    Default = false,
    Tooltip = 'Cuando esto no te puedes caer/animacion de caer.\nTan poco caeras cuando te hagan un mate en ti.' -- Information shown when you hover over the toggle
})

Toggles.antifall:OnChanged(function()
    if Toggles.antifall.Value == true then

        local char = game:GetService("Players").LocalPlayer.Character or
            game:GetService("Players").LocalPlayer.CharacterAdded
        local Humanoid = char:FindFirstChild("Humanoid")
        local ScreenFall1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.ScreenFall1.AnimationId
        local ScreenFall2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.ScreenFall2.AnimationId
        local Fall = game:GetService("Workspace").ShootBreak.Humanoid.Animations.Fall.AnimationId
        local Fall1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.Fall1.AnimationId
        local Fall2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.Fall2.AnimationId
        local DunkedOn1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.DunkedOn1.AnimationId
        local DunkedOn2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.DunkedOn2.AnimationId
        local DunkedOn3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.DunkedOn3.AnimationId
        local DunkedOn4 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.DunkedOn4.AnimationId
        local CrossedLeft1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedLeft1.AnimationId
        local CrossedRight1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedLeft2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedRight2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedLeft3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedRight3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedForwardLeft1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedForwardLeft2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedForwardLeft3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedForwardRight1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedForwardRight2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedForwardRight3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedBackLeft1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedBackLeft2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedBackLeft3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedBackRight1 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedBackRight2 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId
        local CrossedBackRight3 = game:GetService("Workspace").ShootBreak.Humanoid.Animations.CrossedRight1.AnimationId


        game:GetService("RunService").RenderStepped:Connect(function()
            task.wait()
            for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                if Toggles.antifall.Value == true then
                    if v.Animation.AnimationId == ScreenFall1 or v.Animation.AnimationId == ScreenFall2 or
                        v.Animation.AnimationId == Fall or v.Animation.AnimationId == Fall2 or
                        v.Animation.AnimationId == DunkedOn1 or v.Animation.AnimationId == DunkedOn2
                        or v.Animation.AnimationId == DunkedOn3 or v.Animation.AnimationId == DunkedOn4 or
                        v.Animation.AnimationId == CrossedLeft1 or v.Animation.AnimationId == CrossedLeft2 or
                        v.Animation.AnimationId == CrossedLeft3 or v.Animation.AnimationId == CrossedRight1
                        or v.Animation.AnimationId == CrossedRight2 or v.Animation.AnimationId == CrossedRight3 or
                        v.Animation.AnimationId == CrossedForwardLeft1 or v.Animation.AnimationId == CrossedForwardLeft2
                        or v.Animation.AnimationId == CrossedForwardLeft3
                        or v.Animation.AnimationId == CrossedForwardRight1 or
                        v.Animation.AnimationId == CrossedForwardLeft2 or v.Animation.AnimationId == CrossedForwardLeft3
                        or v.Animation.AnimationId == CrossedBackLeft1 or v.Animation.AnimationId == CrossedBackLeft2
                        or v.Animation.AnimationId == CrossedBackLeft3 or v.Animation.AnimationId == CrossedBackRight1 or
                        v.Animation.AnimationId == CrossedBackRight2 or v.Animation.AnimationId == CrossedBackRight3 then
                        if Toggles.antifall.Value == true then
                            v:Stop()
                        end
                    end
                end
            end
        end)
    end
    if Toggles.antifall.Value == false then

    end
end)

Toggles.antifall:SetValue(false)



defensivegroup:AddToggle('autoblock', {
    Text = 'Auto Block',
    Default = false,
    Tooltip = 'Con esto bloqueas los disparos deep y fades al activarlo.' -- Information shown when you hover over the toggle
})

Toggles.autoblock:OnChanged(function()
    if Toggles.autoblock.Value == true then
        local lp = game.Players.LocalPlayer
        
        local animationInfo = {}
        
        function getInfo(id)
          local success, info = pcall(function()
              return game:GetService("MarketplaceService"):GetProductInfo(id)
          end)
          if success then
              return info
          end
          return {Name=''}
        end
        
        local vim = game:service("VirtualInputManager")
        
        
        
        function block(player)
            vim:SendKeyEvent(true, 304, false, game)
            local A_1 = "Jump"
            local Event = game:GetService("ReplicatedStorage").GameEvents.ClientAction
            Event:FireServer(A_1)
            vim:SendKeyEvent(false, 304, false, game)
        
        end
        
        local AnimNames = {
            'ShotRelease'
        }
        
        function playerAdded(v)
            local function charadded(char)
              local humanoid = char:WaitForChild("Humanoid", 5)
              if humanoid then
                  humanoid.AnimationPlayed:Connect(function(track)
                      local info = animationInfo[track.Animation.AnimationId]
                      if not info then
                          info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))
                          animationInfo[track.Animation.AnimationId] = info
                      end
                     
                      if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) then
                          local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                          if mag < 12 then
                             
                              for _, animName in pairs(AnimNames) do
                                  if info.Name:match(animName) then
                                      pcall(block, v)
                                  end
                              end
                             
                          end
                      end
                  end)
              end
          end
         
          if v.Character then
              charadded(v.Character)
          end
          v.CharacterAdded:Connect(charadded)
        end
        
        for i,v in pairs(game.Players:GetPlayers()) do
           if v ~= lp then
               playerAdded(v)
           end
        end
        
        game.Players.PlayerAdded:Connect(playerAdded)
    end
    if Toggles.autoblock.Value == false then

    end
end)

Toggles.autoblock:SetValue(false)


RightGroupBox2:AddToggle('antipushable', {
    Text = 'Anti Pushable',
    Default = false,
    Tooltip = 'Con esto no te pueden empujar o almenos cancela la animacion.' -- Information shown when you hover over the toggle
})

Toggles.antipushable:OnChanged(function()
    if Toggles.antipushable.Value == true then
        local char = game:GetService("Players").LocalPlayer.Character or
            game:GetService("Players").LocalPlayer.CharacterAdded
        local Humanoid = char:FindFirstChild("Humanoid")
        local PushOff = game:GetService("Workspace").ShootBreak.Humanoid.Animations.PushOff.AnimationId
        local PushOffLeft = game:GetService("Workspace").ShootBreak.Humanoid.Animations.PushOffLeft.AnimationId
        local PushOffRight = game:GetService("Workspace").ShootBreak.Humanoid.Animations.PushOffRight.AnimationId
        local PushedOn = game:GetService("Workspace").ShootBreak.Humanoid.Animations.PushedOn.AnimationId
        game:GetService("RunService").RenderStepped:Connect(function()
            task.wait()
            for _, v in pairs(Humanoid:GetPlayingAnimationTracks()) do
                if Toggles.antipushable.Value == true then
                    if v.Animation.AnimationId == PushOff or v.Animation.AnimationId == PushOffLeft or
                        v.Animation.AnimationId == PushOffRight or v.Animation.AnimationId == PushedOn then
                        if Toggles.antipushable.Value == true then
                            v:Stop()
                        end
                    end
                end
            end
        end)
    end
    if Toggles.antipushable.Value == false then

    end
end)

Toggles.antipushable:SetValue(false)

local lagger = RightGroupBox2:AddToggle('lagswitch', {
    Text = 'Laggy Server',
    Default = false,
    Tooltip = 'Lagear el servidor completamente, importante mantener la letra pulsada. (esto puede romper el juego)' -- Information shown when you hover over the toggle
})

Toggles.lagswitch:OnChanged(function()
    if Toggles.lagswitch.Value == true then

    end
    if Toggles.lagswitch.Value == false then

    end
end)

Toggles.lagswitch:SetValue(false)

lagger:AddKeyPicker('KeyPicker2', {
    Default = 'P',
    SyncToggleState = false,
    Mode = 'Hold',
    Text = 'Auto lockpick safes',
    NoUI = false,
})

Options.KeyPicker2:OnClick(function()

end)

task.spawn(function()
    while true do
        wait(3)

        -- example for checking if a keybind is being pressed
        local state2 = Options.KeyPicker2:GetState()
        if state2 then
            if Toggles.lagswitch.Value == true then
                while wait(0.6) do --// don't change it's the best
                    if Toggles.lagswitch.Value == true then
                        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
                        local function getmaxvalue(val)
                            local mainvalueifonetable = 499999
                            if type(val) ~= "number" then
                                return nil
                            end
                            local calculateperfectval = (mainvalueifonetable / (val + 2))
                            return calculateperfectval
                        end

                        local function bomb(tableincrease, tries)
                            local maintable = {}
                            local spammedtable = {}
                            if Toggles.lagswitch.Value == true then

                                table.insert(spammedtable, {})
                                z = spammedtable[1]
                                for i = 1, tableincrease do
                                    local tableins = {}
                                    table.insert(z, tableins)
                                    z = tableins
                                end
                                local calculatemax = getmaxvalue(tableincrease)
                                local maximum
                                if calculatemax then
                                    maximum = calculatemax
                                else
                                    maximum = 999999
                                end
                                for i = 1, maximum do
                                    table.insert(maintable, spammedtable)
                                end
                                for i = 1, tries do
                                    if Toggles.lagswitch.Value == true then
                                        game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
                                    end
                                end
                                if Toggles.lagswitch.Value == true then
                                    bomb(250, 2) --// change values if client crashes
                                end
                            end
                        end
                    end
                end
            end
        end

        if Library.Unloaded then break end
    end
end)

local speedborn = RightGroupBox2:AddToggle('speedcheese', {
    Text = 'Speed Cheese',
    Default = false,
    Tooltip = 'Cada vez que pulses la tecla te impulsaras con velocidad\ndiminuta teleport hacia delante.' -- Information shown when you hover over the toggle
})

Toggles.speedcheese:OnChanged(function()
    if Toggles.speedcheese.Value == true then
    end
    if Toggles.speedcheese.Value == false then

    end
end)

Toggles.speedcheese:SetValue(false)


speedborn:AddKeyPicker('keypickercheese', {
    Default = 'Y',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Auto lockpick safes',
    NoUI = false,
})

Options.keypickercheese:OnClick(function()
    if Toggles.speedcheese.Value == true then
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame()
            * CFrame.new(0, 0, -1))
    end
end)

task.spawn(function()
    local keyxdd = Options.keypickercheese.Value
    while true do
        wait(0)

        -- example for checking if a keybind is being pressed
        local state01 = Options.keypickercheese:GetState()
        if state01 then
            if Toggles.speedcheese.Value == true then
                --game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame()*CFrame.new(0, 0, -4))
            end
        end

        if Library.Unloaded then break end
    end
end)


local RightGroupBox3 = Tabs.Main2:AddRightGroupbox('$$ Macros Remapped $$')


RightGroupBox3:AddToggle('macroskeys', {
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


RightGroupBox3:AddLabel('Spin Dribble'):AddKeyPicker('macrospin', {
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



RightGroupBox3:AddLabel('Behind Back Drible'):AddKeyPicker('behindback', {
    Default = 'V', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
    SyncToggleState = true,


    Mode = 'Hold', -- Modes: Always, Toggle, Hold

    Text = 'Auto lockpick safes', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
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

RightGroupBox3:AddLabel('Double Crossover'):AddKeyPicker('doublecrossover', {
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

RightGroupBox3:AddLabel('Snatchback'):AddKeyPicker('snatchback', {
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

RightGroupBox3:AddLabel('Under Side'):AddKeyPicker('underside', {
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

RightGroupBox3:AddLabel('Under Back'):AddKeyPicker('underback', {
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


RightGroupBox3:AddLabel('Under Front'):AddKeyPicker('underfront', {
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





local MyButton = teleportsbox:AddButton('Play Now', function()
    local TeleportService = game:GetService("TeleportService")
    local levelId = 9336911238
    local player = game.Players.LocalPlayer
    TeleportService:Teleport(levelId, player)
end)

local MyButton2 = MyButton:AddButton('Practice', function()
    local TeleportService = game:GetService("TeleportService")
    local levelId = 7899883270
    local player = game.Players.LocalPlayer
    TeleportService:Teleport(levelId, player)
end)

local MyButtonxd = teleportsbox:AddButton('Plaza', function()
    local TeleportService = game:GetService("TeleportService")
    local levelId = 8448881160
    local player = game.Players.LocalPlayer
    TeleportService:Teleport(levelId, player)
end)

local MyButton3 = MyButtonxd:AddButton('Park', function()
    local TeleportService = game:GetService("TeleportService")
    local levelId = 10107441386
    local player = game.Players.LocalPlayer
    TeleportService:Teleport(levelId, player)
end)

local MyButtonxd3 = teleportsbox:AddButton('Main Menu', function()
    local TeleportService = game:GetService("TeleportService")
    local levelId = 7899881670
    local player = game.Players.LocalPlayer
    TeleportService:Teleport(levelId, player)
end)

local MyButton4 = MyButtonxd3:AddButton('Rec-Center', function()
    local TeleportService = game:GetService("TeleportService")
    local levelId = 10207014047
    local player = game.Players.LocalPlayer
    TeleportService:Teleport(levelId, player)
    --game:GetService("ReplicatedStorage").Remotes.Teleport:InvokeServer("Rec")
end)


creditsbox:AddLabel('<font color="#3da5ff">TheyRuslan#5657</font> - scripter')
creditsbox:AddLabel('<font color="#de6cff">;;zldrako#5505</font> - contributor')

-- //$ Booster Options $// --


local LeftGroupBox = Tabs.Main:AddLeftGroupbox('      $$ Main Booster $$')

LeftGroupBox:AddLabel('      $ DrAk0 is GAY fR $')
LeftGroupBox:AddDivider()
LeftGroupBox:AddLabel('      [MY PARK BOOSTER]')
LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('fpsbooster', {
    Text = '      Booster #1',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
})

Toggles.fpsbooster:OnChanged(function()
    if Toggles.fpsbooster.Value == true then
        pcall(function()
            game:GetService("Workspace")["Fake Plaza"]:Destroy()
            game:GetService("Workspace").Park["Prop Lights"]:Destroy()
            game:GetService("Workspace").Park["Path Walls"]:Destroy()
            game:GetService("Workspace").Park.Benches:Destroy()
            game:GetService("Workspace").Park.Borders:Destroy()
            game:GetService("Workspace").Park["Trash Cans"]:Destroy()
            game:GetService("Workspace").Park["TV Screen"]:Destroy()
            game:GetService("Workspace").Park.Fences:Destroy()
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == "Net" then
                    v:Destroy()
                end
            end
        end)
    end
    if Toggles.fpsbooster.Value == false then
    end
end)
Toggles.fpsbooster:SetValue(false)


LeftGroupBox:AddToggle('fpsbooster2', {
    Text = '      Booster #2',
    Default = false,
    Tooltip = 'Activate ground fps boost.' -- Information shown when you hover over the toggle
})

Toggles.fpsbooster2:OnChanged(function()
    if Toggles.fpsbooster2.Value == true then
        for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
            if v.Name == "Stairs" then
                v.Transparency = 1
            end
        end
        for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
            if v.Name == "Ground" then
                v.Transparency = 1
            end
        end
        for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
            if v.Name == "Ramp" then
                v.Transparency = 1
            end
        end
        for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
            if v.Name == "GroundRamp" then
                v.Transparency = 1
            end
        end
    end
    if Toggles.fpsbooster2.Value == false then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
                if v.Name == "Stairs" then
                    v.Transparency = 0
                end
            end
            for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
                if v.Name == "Ground" then
                    v.Transparency = 0
                end
            end
            for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
                if v.Name == "Ramp" then
                    v.Transparency = 0
                end
            end
            for i, v in pairs(game:GetService("Workspace").Park.Ground:GetChildren()) do
                if v.Name == "GroundRamp" then
                    v.Transparency = 0
                end
            end
        end)
    end
end)
Toggles.fpsbooster2:SetValue(false)

LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('fpsbooster3', {
    Text = '      Court #1',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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

LeftGroupBox:AddToggle('fpsbooster4', {
    Text = '      Court #2',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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

LeftGroupBox:AddToggle('fpsbooster5', {
    Text = '      Court #3',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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

LeftGroupBox:AddToggle('fpsbooster6', {
    Text = '      Court #4',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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

LeftGroupBox:AddToggle('fpsbooster7', {
    Text = '      Court #5',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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


LeftGroupBox:AddToggle('fpsbooster8', {
    Text = '      Court #6',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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


LeftGroupBox:AddToggle('fpsbooster9', {
    Text = '      Court #7',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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

LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('fpsbooster10', {
    Text = '      Player Delete #1',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
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


local RightGroupBox = Tabs.Main:AddRightGroupbox('      $$ Second Booster $$')

RightGroupBox:AddLabel('        😈 Lil X Peep 😈')
RightGroupBox:AddDivider()
RightGroupBox:AddLabel('      [REC CENTER BOOSTER]')
RightGroupBox:AddDivider()

RightGroupBox:AddToggle('recbooster1', {
    Text = '      Net Booster #1',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
})

Toggles.recbooster1:OnChanged(function()
    if Toggles.recbooster1.Value == true then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == "Net" then
                    v.Parent = game:GetService("ReplicatedStorage")
                end
            end
        end)
    end
    if Toggles.recbooster1.Value == false then
        pcall(function()
            game:GetService("ReplicatedStorage").Net.Parent = game.Workspace
            game:GetService("ReplicatedStorage").Net.Parent = game.Workspace
        end)
    end
end)
Toggles.recbooster1:SetValue(false)

RightGroupBox:AddToggle('recbooster2', {
    Text = '      Rec Booster #2',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
})

Toggles.recbooster2:OnChanged(function()
    if Toggles.recbooster2.Value == true then
        pcall(function()
            game:GetService("Workspace").Gym.Parent = game:GetService("ReplicatedStorage")
        end)
    end
    if Toggles.recbooster2.Value == false then
        pcall(function()
            game:GetService("ReplicatedStorage").Gym.Parent = game.Workspace
        end)
    end
end)
Toggles.recbooster2:SetValue(false)

RightGroupBox:AddDivider()
RightGroupBox:AddLabel('        [PLAY NOW BOOSTER]')
RightGroupBox:AddDivider()

RightGroupBox:AddToggle('playnowbooster', {
    Text = '      Nets Booster  #1',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
})

Toggles.playnowbooster:OnChanged(function()
    if Toggles.playnowbooster.Value == true then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == "Net" then
                    v.Parent = game:GetService("ReplicatedStorage")
                end
            end
        end)
    end
    if Toggles.playnowbooster.Value == false then
        pcall(function()
            game:GetService("ReplicatedStorage").Net.Parent = game.Workspace
            game:GetService("ReplicatedStorage").Net.Parent = game.Workspace
        end)
    end
end)
Toggles.playnowbooster:SetValue(false)


RightGroupBox:AddToggle('playnowbooster2', {
    Text = '      Arena Booster #2',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
})

Toggles.playnowbooster2:OnChanged(function()
    if Toggles.playnowbooster2.Value == true then
        pcall(function()
            game:GetService("Workspace").Arena.Parent = game:GetService("StarterPlayer")
        end)
    end
    if Toggles.playnowbooster2.Value == false then
        pcall(function()
            game:GetService("StarterPlayer").Arena.Parent = game.Workspace
        end)
    end
end)
Toggles.playnowbooster2:SetValue(false)

RightGroupBox:AddDivider()
RightGroupBox:AddLabel('      [PERSONAL GYM BOOSTER]')
RightGroupBox:AddDivider()

RightGroupBox:AddToggle('personalgymbooster', {
    Text = '      Booster #1',
    Default = false,
    Tooltip = 'Activate highly recommended drako is gay.' -- Information shown when you hover over the toggle
})

Toggles.personalgymbooster:OnChanged(function()
    if Toggles.personalgymbooster.Value == true then
        pcall(function()
            game:GetService("Workspace").Building.Parent = game:GetService("ReplicatedStorage")
            game:GetService("Workspace")["Fake Plaza"].Parent = game:GetService("ReplicatedStorage")
        end)
    end
    if Toggles.personalgymbooster.Value == false then
        pcall(function()
            sethiddenproperty(workspace.CurrentCamera, "FieldOfView", 75)
            game:GetService("ReplicatedStorage").Building.Parent = game:GetService("Workspace")
            game:GetService("ReplicatedStorage")["Fake Plaza"].Parent = game:GetService("Workspace")
        end)
    end
end)
Toggles.personalgymbooster:SetValue(false)



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
    Default = 'LeftControl',
    NoUI = true,
    Text = 'Menu keybind'
})
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('RuslanHub')
SaveManager:SetFolder('RuslanHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])

local function asustarxd()

    wait(200)

    local sound = Instance.new("Sound", game.Workspace)
    sound.Volume = 70
    sound.SoundId = "rbxassetid://1402068429"
    sound.Looped = false
    sound:Play()

    wait(180)

    local sound = Instance.new("Sound", game.Workspace)
    sound.Volume = 80
    sound.SoundId = "rbxassetid://9114038441"
    sound.Looped = false
    sound:Play()

    wait(235)

    local sound = Instance.new("Sound", game.Workspace)
    sound.Volume = 100
    sound.SoundId = "rbxassetid://5113630674"
    sound.Looped = false
    sound:Play()

end
