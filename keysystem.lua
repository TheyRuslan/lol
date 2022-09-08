-- Sistema de KEY 
-- TheyRuslan#0001

local plrGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
print("o")
for i, v in pairs(plrGui:GetChildren()) do
    if v:IsA("ScreenGui") then
        print(v.Name)
        if v.Enabled == true then
            print("E")
        print(v.Name)
            print(v.Name)
            if v.Name == "Chat" or v.Name == "BubbleChat" or v.Name == "Freecam" then

            else
                print("yes")
                local Background = Instance.new("Frame")
                Background.Name = "Background"
                Background.Parent = v
                Background.AnchorPoint = Vector2.new(0.5,0.5)

                Background.Size = UDim2.new(0, 300, 0, 184)
                Background.Position = UDim2.new(0.5,0,0.5,0)

                local UiCorner = Instance.new("UICorner")
                UiCorner.Parent = Background

                local Background2 = Instance.new("Frame")

                Background2.Name = "Background2"
                Background2.Parent = Background
                print(Background2.Parent.Name)
                Background2.AnchorPoint = Vector2.new(0.5,0.5)
                Background2.Size = UDim2.new(0, 282,0, 166)
                Background2.Position = UDim2.new(0.5,0,0.5,0)
                Background2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

                local UiCorner = Instance.new("UICorner",Background2)

                local TextBox = Instance.new("TextBox",Background2)
                TextBox.Name = "KeyBox"
                TextBox.AnchorPoint = Vector2.new(0.5,0.5)

                TextBox.Size = UDim2.new(0, 255,0, 27)
                TextBox.Position = UDim2.new(0.5, 0,0.2, 0)
                TextBox.Font = Enum.Font.SourceSans
                TextBox.TextSize = 19
                TextBox.TextColor = BrickColor.new("Blue")
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.BorderSizePixel = 0
                TextBox.Text = "PASTE KEY HERE!!"
                
                local YesButton = Instance.new("TextButton",Background2)
                YesButton.Name = "YesButton"
                YesButton.AnchorPoint = Vector2.new(0.5,0.5)

                YesButton.Size = UDim2.new(0, 102,0, 35)
                YesButton.Position = UDim2.new(0.5, 0,0.8, 0)
                YesButton.Font = Enum.Font.SourceSansBold
                YesButton.TextSize = 28
                YesButton.Text = "Submit"
                YesButton.TextColor = BrickColor.new("Blue")
                YesButton.BackgroundColor3 = Color3.fromRGB(98,98,98)

                YesButton.MouseButton1Click:Connect(function()

                    local a = game.PlaceId
                    TextBox.PlaceholderText = "Key Here"

                    local tableofkeys = {
                        --Free Keys
                        "AJ32-XLA2-AP2A-MXKQ",
                        "UX39-X1A2-XP1A-MEQQ",
                        "XX21-E4X2-9XNV-RB2X",
                        "V5E1-EZ22-3A2R-2B2G",
                        "XJ31-3L22-1PEA-M5KQ",
                        "YX31-E0A9-ZP3A-LEEQ",
                        "3K21-P4Z1-EXCV-JR6P",
                        "V2Z7-UZ1R-2A7R-1F2E",

                        --Boosters Key
                        "AJ32-XLA2-AP2A-MXKQ",
                        "UX39-X1A2-XP1A-MEQQ",
                        "XX21-E4X2-9XNV-RB2X",
                        "V5E1-EZ22-3A2R-2B2G",
                        "XJ31-3L22-1PEA-M5KQ",
                        "YX31-E0A9-ZP3A-LEEQ",
                        "3K21-P4Z1-EXCV-JR6P",
                        "V2Z7-UZ1R-2A7R-1F2E",

                        --Dev Key

                        "AJ32-XLA2-AP2A-MXKQ",
                        "UX39-X1A2-XP1A-MEQQ",
                        "XX21-E4X2-9XNV-RB2X",
                        "V5E1-EZ22-3A2R-2B2G",
                        "XJ31-3L22-1PEA-M5KQ",
                        "YX31-E0A9-ZP3A-LEEQ",
                        "3K21-P4Z1-EXCV-JR6P",
                        "V2Z7-UZ1R-2A7R-1F2E",
                        "",
                        ""

                    }

                    --
                    local boosterskeys = {
                        "AJ32-XLA2-AP2A-MXKQ",
                        "UX39-X1A2-XP1A-MEQQ",
                        "XX21-E4X2-9XNV-RB2X",
                        "V5E1-EZ22-3A2R-2B2G",
                        "XJ31-3L22-1PEA-M5KQ",
                        "YX31-E0A9-ZP3A-LEEQ",
                        "3K21-P4Z1-EXCV-JR6P",
                        "V2Z7-UZ1R-2A7R-1F2E",
                        "",
                        ""

                    }
                    
                    local whitelistedusers = {
                        0, --Booster Profile ID
    
                    }
                    
                    if table.find(tableofkeys, tostring(TextBox.Text)) then

                        if table.find(boosterskeys, (TextBox.Text)) then
                            if table.find(whitelistedusers, tonumber(game:GetService("Players").LocalPlayer.UserId)) then
                                print("yes")
                            else
                                setclipboard("https://discord.gg/")

                                --game:GetService("Players").LocalPlayer:Kick("L") --Kick Message For Boosters Key 
                            end
                        end

                        TextBox.PlaceholderText = "Correct Key!!!"

                        Background.Visible = false
                        print("There")
                        if a == 6804602922 then -- Place ID / Game ID
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/TheyRuslan/server.cfg/main/beta%20encrypt.lua?token=GHSAT0AAAAAABX7S25QH4JM35NSWAN2N2VMYYZYTAA"))() --Loadstring
                            print("working")

                        elseif a == 4499961540 then -- Place ID / Game ID
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Loompic/HoopVerse/main/Aimbot"))() --Loadstring
                            print("working")

                            --game.Players.LocalPlayer:Kick("Not Supported")
                        else game.Players.LocalPlayer:Kick("Outdated Key Get New Key TheyRuslan#0001 or The game is not supported by this script") --Kick Message For Free Key 

                        end
                    else
                        TextBox.PlaceholderText = "Wrong Key!!!" 
                    end

                end)

                

                local TextLabel1 = Instance.new("TextLabel",Background2)
                TextLabel1.Name = "TextLabel1"
                TextLabel1.AnchorPoint = Vector2.new(0.5,0.5)

                TextLabel1.Size = UDim2.new(0, 255,0, 57)
                TextLabel1.Position = UDim2.new(0.5, 0,0.5, 0)
                TextLabel1.Font = Enum.Font.SourceSansBold
                TextLabel1.TextSize = 14
                TextLabel1.Text = "TheyRuslan#7297 Get Key"
                TextLabel1.TextColor = BrickColor.new("Blue")
                TextLabel1.BackgroundTransparency = 1
                
                break
            end
        end
    end
end
