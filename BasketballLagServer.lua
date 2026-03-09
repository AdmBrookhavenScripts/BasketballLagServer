--[[
__________                __           __ ___.          .__  .__    .____                       _________                                
\______   \_____    _____|  | __ _____/  |\_ |__ _____  |  | |  |   |    |   _____     ____    /   _____/ ______________  __ ___________ 
 |    |  _/\__  \  /  ___/  |/ // __ \   __\ __ \\__  \ |  | |  |   |    |   \__  \   / ___\   \_____  \_/ __ \_  __ \  \/ // __ \_  __ \
 |    |   \ / __ \_\___ \|    <\  ___/|  | | \_\ \/ __ \|  |_|  |__ |    |___ / __ \_/ /_/  >  /        \  ___/|  | \/\   /\  ___/|  | \/
 |______  /(____  /____  >__|_ \\___  >__| |___  (____  /____/____/ |_______ (____  /\___  /  /_______  /\___  >__|    \_/  \___  >__|   
        \/      \/     \/     \/    \/         \/     \/                    \/    \//_____/           \/     \/                 \/       
       Made by AdmBrookhavenScripts
]]

if game.PlaceId == 4924922222 then
getgenv().BasketballLagServer=false
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Player = Players.LocalPlayer
local Root = Player.Character:WaitForChild("HumanoidRootPart")

local Container = workspace:WaitForChild("WorkspaceCom")
local TargetColor = BrickColor.new("CGA brown")

local args = {
	"PickingTools",
	"PropMaker"
}

local args1 = {
	"PlayerWantsToDeleteTool",
	"PropMaker"
}

local args2 = {
	"RequestingPropName",
	"SportsBasketBall",
	"Sports"
}

local args3 = {
    workspace:WaitForChild("Model"):WaitForChild("Sidewalk"),
    Root.Position
}

local argsf = {
    Vector3.new(0, 196, 0)
}

local args4 = {
	"ClearAllProps"
}

local HumConn

local Min = 1
local Max = 26
local Default = 7
local MaxDistance = 5
local MaxClickDetectors = Default
local ClickDetectors = {}

local LMG2L = {};
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Frame_2"]["Size"] = UDim2.new(0, 308, 0, 152);
LMG2L["Frame_2"]["Position"] = UDim2.new(0, 254, 0, 46);
LMG2L["Frame_2"]["BackgroundTransparency"] = 0.7;

LMG2L["UICorner_3"] = Instance.new("UICorner", LMG2L["Frame_2"]);
LMG2L["UICorner_3"]["CornerRadius"] = UDim.new(0, 4);

LMG2L["TextLabel_4"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["TextLabel_4"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_4"]["TextSize"] = 16;
LMG2L["TextLabel_4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["TextLabel_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["TextLabel_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_4"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel_4"]["Size"] = UDim2.new(0, 260, 0, 28);
LMG2L["TextLabel_4"]["Text"] = [[Change lag server level]];
LMG2L["TextLabel_4"]["Position"] = UDim2.new(0, 12, 0, 4);

LMG2L["TextButton_5"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_5"]["BorderSizePixel"] = 0;
LMG2L["TextButton_5"]["TextSize"] = 24;
LMG2L["TextButton_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
LMG2L["TextButton_5"]["BackgroundTransparency"] = 1;
LMG2L["TextButton_5"]["Size"] = UDim2.new(0, 32, 0, 30);
LMG2L["TextButton_5"]["Text"] = [[X]];
LMG2L["TextButton_5"]["Position"] = UDim2.new(0, 274, 0, 2);

LMG2L["TextBox_6"] = Instance.new("TextBox", LMG2L["Frame_2"]);
LMG2L["TextBox_6"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextBox_6"]["BorderSizePixel"] = 0;
LMG2L["TextBox_6"]["TextSize"] = 14;
LMG2L["TextBox_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextBox_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextBox_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
LMG2L["TextBox_6"]["ClearTextOnFocus"] = false;
LMG2L["TextBox_6"]["PlaceholderText"] = [[Min - 1 | Max - 26]];
LMG2L["TextBox_6"]["Size"] = UDim2.new(0, 308, 0, 34);
LMG2L["TextBox_6"]["Position"] = UDim2.new(0, 0, 0, 36);
LMG2L["TextBox_6"]["Text"] = [[7]];
LMG2L["TextBox_6"]["BackgroundTransparency"] = 0.8;

LMG2L["TextLabel_7"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["TextLabel_7"]["TextWrapped"] = true;
LMG2L["TextLabel_7"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_7"]["TextSize"] = 14;
LMG2L["TextLabel_7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["TextLabel_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["TextLabel_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_7"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel_7"]["Size"] = UDim2.new(0, 286, 0, 34);
LMG2L["TextLabel_7"]["Text"] = [[Warning: If your device isn't very good, change this. ]];
LMG2L["TextLabel_7"]["Position"] = UDim2.new(0, 8, 0, 70);

LMG2L["TextButton_8"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_8"]["BorderSizePixel"] = 0;
LMG2L["TextButton_8"]["TextSize"] = 14;
LMG2L["TextButton_8"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["TextButton_8"]["Size"] = UDim2.new(0, 156, 0, 36);
LMG2L["TextButton_8"]["Text"] = [[Start]];
LMG2L["TextButton_8"]["Position"] = UDim2.new(0, 8, 0, 108);

LMG2L["UICorner_9"] = Instance.new("UICorner", LMG2L["TextButton_8"]);
LMG2L["UICorner_9"]["CornerRadius"] = UDim.new(0, 4);

LMG2L["UIGradient_a"] = Instance.new("UIGradient", LMG2L["TextButton_8"]);
LMG2L["UIGradient_a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.471, Color3.fromRGB(212, 212, 212)),ColorSequenceKeypoint.new(0.930, Color3.fromRGB(144, 144, 144)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(144, 144, 144))};

LMG2L["TextBox_6"].FocusLost:Connect(function(enterPressed)
    if getgenv().BasketballLagServer then
    return
    end
    if not enterPressed then return end
    local value = tonumber(LMG2L["TextBox_6"].Text)
    if not value then
        value = Default
    end
    value = math.clamp(value, Min, Max)
    MaxClickDetectors = value
    LMG2L["TextBox_6"].Text = tostring(value)
end)

LMG2L["TextButton_5"].MouseButton1Click:Connect(function()
LMG2L["ScreenGui_1"]:Destroy()
end)

LMG2L["TextButton_8"].MouseButton1Click:Connect(function()
if getgenv().BasketballLagServer then
return
end
HumConn = game:GetService("RunService").RenderStepped:Connect(function()
Player.Character.Humanoid.WalkSpeed=0
Player.Character.Humanoid.JumpPower=0
end)
LMG2L["ScreenGui_1"]:Destroy()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated,false)
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Please wait",Text="Starting basketball lag server, please wait.",Duration=36})
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lot:Unclaim"):FireServer()

local function GH()
local l0 = game:GetService("Players")
local l1 = game:GetService("ReplicatedStorage")
local l2 = l0.LocalPlayer
local b4 = "040_House"
local i0 = {
[1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [27] = true,
[28] = true, [29] = true, [30] = true, [31] = true, [32] = true, [33] = true, [34] = true,
[35] = true, [36] = true, [37] = true, [38] = true
}
local function f9()
local a0 = l2.Character or l2.CharacterAdded:Wait()
local a1 = a0:WaitForChild("HumanoidRootPart")
local h0 = workspace["001_Lots"]:FindFirstChild(l2.Name .. "House")
if h0 and h0:FindFirstChild("HousePickedByPlayer") then
local h1 = h0.HousePickedByPlayer:FindFirstChild("HouseModel")
if h1 then
local h2 = h1:FindFirstChild("001_ChangeRoom")
if h2 then
local h3 = h2:FindFirstChild("001_HoldRooms")
if h3 and h3:FindFirstChild("Room") and h3.Room:FindFirstChild("Tools") and h3.Room.Tools:FindFirstChild("Basketball") then
local h4 = h3.Room.Tools.Basketball
if h4:IsA("MeshPart") then
a1.CFrame = h4.CFrame + Vector3.new(0, 3, 0)
return
end
end
end
end
end
local a2 = {}
for _, a3 in ipairs(workspace:GetDescendants()) do
if a3:IsA("Model") and string.find(a3.Name, "For Sale") then
local a4
local numberPart = a3:FindFirstChild("Number", true)
if numberPart then
	local numberValue = numberPart:FindFirstChildWhichIsA("NumberValue")
	if numberValue then
		a4 = numberValue.Value
	end
end
if a4 and not i0[a4] then
table.insert(a2, {m = a3, v = a4})
end
end
end
if #a2 == 0 then
return
end
local a6 = a2[math.random(1, #a2)]
local a7 = a6.m
local a8 = a6.v
local buyPart = a7:FindFirstChild("BuyHouse", true)
if not buyPart then
return
end
a1.CFrame = buyPart.CFrame + Vector3.new(0, 3, 0)
task.wait(1)
local b2 = { a8 }
l1:WaitForChild("Remotes"):WaitForChild("Lot:Claim"):InvokeServer(unpack(b2))
task.wait(1)
local b3 = { a8, b4 }
l1:WaitForChild("Remotes"):WaitForChild("Lot:BuildProperty"):InvokeServer(unpack(b3))
task.wait(1)
local j0 = workspace["001_Lots"]:WaitForChild(l2.Name .. "House")
if j0 and j0:FindFirstChild("HousePickedByPlayer") then
local j1 = j0.HousePickedByPlayer:WaitForChild("HouseModel")
local j2 = j1:WaitForChild("001_ChangeRoom"):WaitForChild("001_HoldRooms"):WaitForChild("Room"):WaitForChild("Tools"):WaitForChild("Basketball")
if j2 then
a1.CFrame = j2.CFrame + Vector3.new(0, 3, 0)
end
end
end
f9()
end

Player.Character.HumanoidRootPart.CFrame = CFrame.new(-61.43407440185547, 4, -27.992755889892578)
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args1))
task.wait(.5)
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Too1l"):InvokeServer(unpack(args))
task.wait(.5)
game.Players.LocalPlayer.Backpack.PropMaker.Parent = game.Players.LocalPlayer.Character
task.wait(1)
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args4))
task.wait(.5)
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args2))
task.wait(.5)

for v = 1, 11 do
local args3 = {
    workspace:WaitForChild("Model"):WaitForChild("Sidewalk"),
    Root.Position
}
game:GetService("Players").LocalPlayer.Character:WaitForChild("PropMaker"):WaitForChild("Tool_PropMake"):FireServer(unpack(args3))
task.wait(1)
end

task.wait(1)
GH()
task.wait(.5)
for v = 1,15 do
    local args3 = {
    workspace:WaitForChild("Model"):WaitForChild("Sidewalk"),
    Root.Position
}
game:GetService("Players").LocalPlayer.Character:WaitForChild("PropMaker"):WaitForChild("Tool_PropMake"):FireServer(unpack(args3))
    task.wait(1)
end
task.wait(1)
Player.Character.HumanoidRootPart.CFrame = CFrame.new(-61.43407440185547, 4, -27.992755889892578)
firesignal(Player.PlayerGui.MainGUIHandler.MainHouseMenu.Catalog.Header.CategoryTabs.Close.Activated)
task.wait(.5)
for _,v in pairs(workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_TrafficCones"):GetChildren()) do
	if v:FindFirstChild("SetCurrentCFrame") then
		local argsc = {
			Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0)
		}
		v.SetCurrentCFrame:InvokeServer(unpack(argsc))
	end
end
task.wait(1)
do
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local Root = char:WaitForChild("HumanoidRootPart")

local folder = workspace.WorkspaceCom["001_TrafficCones"]
local modelName = "Prop"..player.Name

for _, model in ipairs(folder:GetChildren()) do
    if #ClickDetectors >= MaxClickDetectors then
        break
    end

    if model:IsA("Model") and model.Name == modelName then
        if model:FindFirstChild("BasketBall", true) then

            for _, obj in ipairs(model:GetDescendants()) do
                if obj:IsA("ClickDetector") and obj.Parent:IsA("BasePart") then
                    local distance = (obj.Parent.Position - Root.Position).Magnitude

                    if distance <= MaxDistance then
                        table.insert(ClickDetectors, obj)

                        if #ClickDetectors >= MaxClickDetectors then
                            break
                        end
                    end
                end
            end

        end
    end
end

BasketballLagConnection = RunService.PreSimulation:Connect(function()
    for _, cd in ipairs(ClickDetectors) do
        fireclickdetector(cd)
    end

    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") and tool:FindFirstChild("ClickEvent") then
            tool.ClickEvent:FireServer(unpack(argsf))
        end
    end
    for _,v in ipairs(Container:GetDescendants()) do
	    if v:IsA("BasePart") and v.Name == "Handle" and v.BrickColor == TargetColor then
			v:Destroy()
		end
	end
end)
end
Player.Character.HumanoidRootPart.Anchored=true
HumConn:Disconnect()
HumConn = nil
game.Players.LocalPlayer.Character.PropMaker.Parent = game.Players.LocalPlayer.Backpack
end)
return LMG2L["ScreenGui_1"], require;
else
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Please wait",Text="Game not supported (Join in Brookhaven 🏡RP)",Duration=5})
end
