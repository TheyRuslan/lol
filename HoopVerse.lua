
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://8697636436" 
sound.Looped = false
sound:Play()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAbsolutionism/Wally-GUI-Library-V2-Remastered/main/Library%20Code", true))()

library.options.underlinecolor = 'rainbow' 
library.options.toggledisplay = 'Check'

local Window = library:CreateWindow('HOOP VERSE') 
local Label = Window:Label('Owner TheyRuslan',(nil))

local Section = Window:Section('Court',(true))
local Button = Window:Button("Aimbot", function()
    game.StarterGui:SetCore("SendNotification", {
Title = "Aimbot"; 
Text = "You Need Join AimStudio roblox group for work.";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
wait(0)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Loompic/HoopVerse/main/Aimbot"))()

end)
local Button = Window:Button('Infinite Stamina',function() 
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto Sprint"; 
    Text = "Enabled";
    })
    local sound = Instance.new("Sound", game.Workspace)
    sound.Volume = 5
    sound.SoundId = "rbxassetid://6098419898" 
    sound.Looped = false
    sound:Play()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local character = player.Character
    
    print("INFINITE STAMINA")
    while true do
    wait(0.1)
    game.Players.LocalPlayer.Character.Stamina.Value = 100
    end
    end)
    local Button = Window:Button('Reach Arms',function() 
        game.StarterGui:SetCore("SendNotification", {
        Title = "Reach Arms"; 
        Text = "Enabled";
        })
        local sound = Instance.new("Sound", game.Workspace)
        sound.Volume = 5
        sound.SoundId = "rbxassetid://6098419898" 
        sound.Looped = false
        sound:Play()
        
        game.Players.LocalPlayer.Character.RightUpperArm.Size = Vector3.new(20.5,4.5,2.5)
        game.Players.LocalPlayer.Character.LeftUpperArm.Size = Vector3.new(20.5,4.5,2.5)
        game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(20.5,4.5,2.5)
        game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(20.5,4.5,2.5)
        game.Players.LocalPlayer.Character.RightLowerArm.Size = Vector3.new(20.5,4.5,2.5)
        game.Players.LocalPlayer.Character.LeftLowerArm.Size = Vector3.new(20.5,4.5,2.5)
        
        game.Players.LocalPlayer.Character.RightUpperArm.Transparency = 0.7
        game.Players.LocalPlayer.Character.LeftUpperArm.Transparency = 0.7
        game.Players.LocalPlayer.Character.RightHand.Transparency = 0.7
        game.Players.LocalPlayer.Character.LeftHand.Transparency = 0.7
        game.Players.LocalPlayer.Character.RightLowerArm.Transparency = 0.7
        game.Players.LocalPlayer.Character.LeftLowerArm.Transparency = 0.7
        end)

        local Button = Window:Button('Normal Arms',function() 
            game.StarterGui:SetCore("SendNotification", {
            Title = "Normal Arms"; 
            Text = "Enabled";
            })
            local sound = Instance.new("Sound", game.Workspace)
            sound.Volume = 5
            sound.SoundId = "rbxassetid://6098419898" 
            sound.Looped = false
            sound:Play()
            
            game.Players.LocalPlayer.Character.RightUpperArm.Size = Vector3.new(0.8,0.8,0.8)
            game.Players.LocalPlayer.Character.LeftUpperArm.Size = Vector3.new(0.8,0.8,0.8)
            game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(1,1,0.8)
            game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(1,1,0.8)
            game.Players.LocalPlayer.Character.RightLowerArm.Size = Vector3.new(0.8,0.8,0.8)
            game.Players.LocalPlayer.Character.LeftLowerArm.Size = Vector3.new(0.8,0.8,0.8)
            
            game.Players.LocalPlayer.Character.RightUpperArm.Transparency = 0
            game.Players.LocalPlayer.Character.LeftUpperArm.Transparency = 0
            game.Players.LocalPlayer.Character.RightHand.Transparency = 0
            game.Players.LocalPlayer.Character.LeftHand.Transparency = 0
            game.Players.LocalPlayer.Character.RightLowerArm.Transparency = 0
            game.Players.LocalPlayer.Character.LeftLowerArm.Transparency = 0
            end)
    local Button = Window:Button('Shift Click TP',function() 
        game.StarterGui:SetCore("SendNotification", {
        Title = "Shift Click TP"; 
        Text = "Enabled";
        })
        local sound = Instance.new("Sound", game.Workspace)
        sound.Volume = 5
        sound.SoundId = "rbxassetid://6098419898" 
        sound.Looped = false
        sound:Play()
            print("Shift Click TP: On")
        local player = game:GetService("Players").LocalPlayer
        local char = player.Character
        local mouse = player:GetMouse()
        local uis = game:GetService("UserInputService")
        
        local shifthold  = false
        
        mouse.Button1Down:Connect(function()
            if shifthold then
                char:MoveTo(mouse.Hit.p)
            end
        end)
        
        uis.InputBegan:Connect(function(input, process)
            if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
                shifthold = true
            end
        end)
        
        uis.InputEnded:Connect(function(input, process)
            if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
                shifthold = false
            end
        end)
        end)
local Section = Window:Section('Player',(true))
local Button = Window:Button('Ball TP',function() 
game.StarterGui:SetCore("SendNotification", {
Title = "Press Y to TP Ball"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
    print("Ball TP: On")
local UIS = game:GetService('UserInputService')
local plr = game.Players.LocalPlayer
local Char = plr.Character or plr.CharacterAded:Wait()
local Key = 'Y'
UIS.InputBegan:Connect(function(Input, IsTyping)
  if IsTyping then return end
  local KeyPressed = Input.KeyCode
  if KeyPressed == Enum.KeyCode[Key] then
game.Workspace.Basketball.CFrame = Game.Workspace.XxXxOTIXxXx_PROxD.HumanoidRootPart.CFrame
end
end)
end)
local Button = Window:Button('Ball Mag',function() 
game.StarterGui:SetCore("SendNotification", {
Title = "6 Stud Ball Mag"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
    print("Ball Mag: On")
    local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character
game:GetService("Workspace")character.Hitbox.Size = Vector3.new(6.5,6.5,6.5)
while true do
wait(0.5)
for _, v in pairs (game.workspace:GetDescendants())do
if v.Name == 'Basketball' then 
v.Size = Vector3.new(6.5,6.5,6.5)
end
end
for _, v in pairs (game.workspace:GetDescendants())do
if v.Name == 'Basketball' then 
v.Shape = Enum.PartType.Block
end
end
end
end)
local Button = Window:Button('Camera No Limit',function() 
game.StarterGui:SetCore("SendNotification", {
Title = "Stamina"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
    print("Camera No Limit: On")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character


while true do
game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
wait(0.5)
end
end)
local Button = Window:Button('"B" Super Jump',function() 
game.StarterGui:SetCore("SendNotification", {
Title = "Press B"; 
Text = "Enabled";
})
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "b" then -- you can change the button 
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 8
wait(0.001)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2.5
end
end)
end)
local Slider = Window:Slider('Speed',{ 
['default'] = 16; 
['min'] = 13.5; 
['max'] = 60;
['precise'] = (true or false); 
['flag'] = 'speed'; 
['location'] = {}; 
},function(Value)
_G.WS = (Value);
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;
end)

    local Section = Window:Section('Teleport Options',(true))
    local Button = Window:Button('¡REJOIN!',function()
        local tpservice= game:GetService("TeleportService")
local plr = game.Players.LocalPlayer

tpservice:Teleport(game.PlaceId, plr)
    end)
local Section = Window:Section('TheyRuslan#0001',(true))
