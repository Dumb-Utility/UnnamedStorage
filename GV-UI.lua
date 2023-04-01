-- UI
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UpperText = Instance.new("TextLabel")
local CallInfo = Instance.new("Frame")
local UpperText_2 = Instance.new("TextLabel")
local Caller = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local LPInfo = Instance.new("Frame")
local UpperText_3 = Instance.new("TextLabel")
local LP = Instance.new("TextLabel")
local ID = Instance.new("TextLabel")
local Calls = Instance.new("Frame")
local UpperText_4 = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Call = Instance.new("TextButton")
local Attach = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Name = "NEW_911CAD"
ScreenGui.Enabled = false
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local LastSelectedCall = Instance.new("ObjectValue", ScreenGui)
LastSelectedCall.Name = "LastSelectedCall"

Main.Name = "Main"
Main.Parent = ScreenGui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)

UpperText.Name = "UpperText"
UpperText.Parent = Main
UpperText.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
UpperText.Size = UDim2.new(1, 0, 0, 53)
UpperText.Font = Enum.Font.RobotoMono
UpperText.Text = "Greenville Dispatch - {TeamName}"
UpperText.TextColor3 = Color3.fromRGB(255, 255, 255)
UpperText.TextSize = 25.000
UpperText.TextWrapped = true
UpperText.TextXAlignment = Enum.TextXAlignment.Left

CallInfo.Name = "CallInfo"
CallInfo.Parent = Main
CallInfo.AnchorPoint = Vector2.new(0.5, 0.5)
CallInfo.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
CallInfo.Position = UDim2.new(0.800000012, 0, 0.354999989, 0)
CallInfo.Size = UDim2.new(0.285868376, 0, 0.370810688, 0)

UpperText_2.Name = "UpperText"
UpperText_2.Parent = CallInfo
UpperText_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UpperText_2.Size = UDim2.new(1, 0, 0.282442749, 0)
UpperText_2.Font = Enum.Font.RobotoMono
UpperText_2.Text = "Call Information"
UpperText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
UpperText_2.TextSize = 25.000
UpperText_2.TextWrapped = true
UpperText_2.TextXAlignment = Enum.TextXAlignment.Left

Caller.Name = "Caller"
Caller.Parent = CallInfo
Caller.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Caller.BackgroundTransparency = 1.000
Caller.Position = UDim2.new(0, 0, 0.282442749, 0)
Caller.Size = UDim2.new(1, 0, 0.282442749, 0)
Caller.Font = Enum.Font.RobotoMono
Caller.Text = "Caller: {User}"
Caller.TextColor3 = Color3.fromRGB(255, 255, 255)
Caller.TextSize = 25.000
Caller.TextWrapped = true
Caller.TextXAlignment = Enum.TextXAlignment.Left

Info.Name = "Info"
Info.Parent = CallInfo
Info.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Info.BackgroundTransparency = 1.000
Info.Position = UDim2.new(0, 0, 0.564885378, 0)
Info.Size = UDim2.new(1, 0, 0.435114503, 0)
Info.Font = Enum.Font.RobotoMono
Info.Text = "Info:"
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextSize = 25.000
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

LPInfo.Name = "LPInfo"
LPInfo.Parent = Main
LPInfo.AnchorPoint = Vector2.new(0.5, 0.5)
LPInfo.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
LPInfo.Position = UDim2.new(0.800000012, 0, 0.75999999, 0)
LPInfo.Size = UDim2.new(0.285868376, 0, 0.370810688, 0)

UpperText_3.Name = "UpperText"
UpperText_3.Parent = LPInfo
UpperText_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UpperText_3.Size = UDim2.new(1, 0, 0.282442749, 0)
UpperText_3.Font = Enum.Font.RobotoMono
UpperText_3.Text = "Unit Management"
UpperText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
UpperText_3.TextSize = 25.000
UpperText_3.TextWrapped = true
UpperText_3.TextXAlignment = Enum.TextXAlignment.Left

LP.Name = "LP"
LP.Parent = LPInfo
LP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LP.BackgroundTransparency = 1.000
LP.Position = UDim2.new(0, 0, 0.358778626, 0)
LP.Size = UDim2.new(1, 0, 0.282442749, 0)
LP.Font = Enum.Font.RobotoMono
LP.Text = "LP Name"
LP.TextColor3 = Color3.fromRGB(255, 255, 255)
LP.TextSize = 25.000
LP.TextWrapped = true

ID.Name = "ID"
ID.Parent = LPInfo
ID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ID.BackgroundTransparency = 1.000
ID.Position = UDim2.new(0, 0, 0.641221404, 0)
ID.Size = UDim2.new(1, 0, 0.282442749, 0)
ID.Font = Enum.Font.RobotoMono
ID.Text = "UserID"
ID.TextColor3 = Color3.fromRGB(255, 255, 255)
ID.TextSize = 25.000
ID.TextWrapped = true

Calls.Name = "Calls"
Calls.Parent = Main
Calls.AnchorPoint = Vector2.new(0.5, 0.5)
Calls.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
Calls.Position = UDim2.new(0.326024801, 0, 0.557500064, 0)
Calls.Size = UDim2.new(0.609492958, 0, 0.775588751, 0)

UpperText_4.Name = "UpperText"
UpperText_4.Parent = Calls
UpperText_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UpperText_4.Size = UDim2.new(1, 0, 0, 37)
UpperText_4.Font = Enum.Font.RobotoMono
UpperText_4.Text = "Incoming Calls"
UpperText_4.TextColor3 = Color3.fromRGB(255, 255, 255)
UpperText_4.TextSize = 25.000
UpperText_4.TextWrapped = true
UpperText_4.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = Calls
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0, 0, 0.135036498, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.864963531, 0)
ScrollingFrame.ScrollBarThickness = 5

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0199999996, 0)

Call.Name = "Call"
Call.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
Call.Position = UDim2.new(0, 0, 0.193430662, 0)
Call.Size = UDim2.new(1, 0, 0, 50)
Call.Font = Enum.Font.RobotoMono
Call.Text = "000 - Call Name"
Call.TextColor3 = Color3.fromRGB(255, 255, 255)
Call.TextSize = 23.000
Call.TextStrokeTransparency = 0.000
Call.TextXAlignment = Enum.TextXAlignment.Left

Attach.Name = "Attach"
Attach.Parent = Call
Attach.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
Attach.Position = UDim2.new(0.634955764, 0, 0.119999997, 0)
Attach.Size = UDim2.new(0, 135, 0, 37)
Attach.Font = Enum.Font.RobotoMono
Attach.Text = "ATTACH"
Attach.TextColor3 = Color3.fromRGB(255, 255, 255)
Attach.TextSize = 20.000

UICorner.Parent = Attach

-- Script
 local Pages = ScrollingFrame
Pages.CanvasSize = UDim2.new(0, 0, 0, Pages.UIListLayout.AbsoluteContentSize.Y)
Pages.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Pages.CanvasSize = UDim2.new(0, 0, 0, Pages.UIListLayout.AbsoluteContentSize.Y)
end)

local l__LocalPlayer__1 = game:GetService("Players").LocalPlayer;

for _,v in pairs(l__LocalPlayer__1.PlayerGui:GetChildren()) do
	if string.find(v.Name, "911CAD_") then v.Enabled = false; v:FindFirstChildWhichIsA("LocalScript").Enabled = false end
end

function ChildCheck()
	print("check")
for _,child in pairs(l__LocalPlayer__1:FindFirstChildOfClass("Backpack"):GetChildren()) do
	if string.find(child.Name, "CAD") then
		child:FindFirstChildWhichIsA("LocalScript").Enabled = false
		function FakeScript()
			local script = Instance.new("LocalScript", child)
			script.Name = "NEW_Handler"
			local LP = game:GetService("Players").LocalPlayer
			script.Parent.Equipped:Connect(function()
				local CAD = LP:FindFirstChildOfClass("PlayerGui"):FindFirstChild("NEW_911CAD")
				if not CAD then error("No CAD found.") return end
				CAD.Enabled = true
			end)

			script.Parent.Unequipped:Connect(function()
				local CAD = LP:FindFirstChildOfClass("PlayerGui"):FindFirstChild("NEW_911CAD")
				if not CAD then error("No CAD found.") return end
				CAD.Enabled = false
			end)
		end
		coroutine.wrap(FakeScript)()
	end
end
end

ChildCheck()

l__LocalPlayer__1:FindFirstChildOfClass("Backpack").ChildAdded:Connect(function(child)
	print(child, "child check")
	wait(0.5)
	if string.find(child.Name, "CAD") then
		print(child, "found")
		child:FindFirstChildWhichIsA("LocalScript").Enabled = false
		function FakeScript()
			local script = Instance.new("LocalScript", child)
			script.Name = "NEW_Handler"
			local LP = game:GetService("Players").LocalPlayer
			script.Parent.Equipped:Connect(function()
				local CAD = LP:FindFirstChildOfClass("PlayerGui"):FindFirstChild("NEW_911CAD")
				if not CAD then error("No CAD found.") return end
				CAD.Enabled = true
			end)

			script.Parent.Unequipped:Connect(function()
				local CAD = LP:FindFirstChildOfClass("PlayerGui"):FindFirstChild("NEW_911CAD")
				if not CAD then error("No CAD found.") return end
				CAD.Enabled = false
			end)
		end
		coroutine.wrap(FakeScript)()
	end
end)

l__LocalPlayer__1.CharacterAdded:Connect(function(character)
	wait(1)
	for _,v in pairs(l__LocalPlayer__1.PlayerGui:GetChildren()) do
		if string.find(v.Name, "911CAD_") then v.Enabled = false; v:FindFirstChildWhichIsA("LocalScript").Enabled = false end
	end	
	ChildCheck()
end)

local teams = {
	["FD"]  = { game:GetService("Teams")["Outagamie County Communications"], game:GetService("Teams")["Greenville Fire Rescue"] },
	["DOT"] = { game:GetService("Teams")["Outagamie County Communications"], game:GetService("Teams")["Wisconsin Department of Transportation"] },
	["LE"] = { game:GetService("Teams")["Outagamie County Communications"], game:GetService("Teams")["Fox Valley Metro Police Department"], game:GetService("Teams")["Outagamie County Sheriff's Office"], game:GetService("Teams")["Wisconsin State Patrol"], game:GetService("Teams")["National Park Service"] }
}
local TeamColor = {
	["LE"] = Color3.new(0, 150, 255),
	["FD"] = Color3.new(255, 100, 100),
	["DOT"]= Color3.new(255, 170, 0),
}
function CheckTeam(Team: string)
	for n,v in pairs(teams) do
		if n == Team then
			for _,team in pairs(v) do
				if team == l__LocalPlayer__1 then return true end
			end
		end
	end
	return false
end

function GetTeam()
	local wl = {}
	for n,v in pairs(teams) do
		if table.find(v, l__LocalPlayer__1.Team) then
			table.insert(wl, n)
		end
	end
	return wl
end

function Get911()
	local t = {}
	local f = GetTeam()
	for _,v in pairs(f) do
		print(game:GetService("ReplicatedStorage")["911Calls"]:FindFirstChild(v))
		table.insert(t, game:GetService("ReplicatedStorage")["911Calls"]:FindFirstChild(v))
	end
	return t
end

local CallTab = {}

function Add911(Ting: RBXScriptConnection)
	table.insert(CallTab, Ting)
end

local l__Parent__2 = ScreenGui;
local l__FD__4 = game:GetService("ReplicatedStorage")["911Calls"].FD;
local l__LastSelectedCall__2 = l__Parent__2.LastSelectedCall;
local function u4()
	for v5, v6 in pairs(ScrollingFrame:GetChildren()) do
		if v6:IsA("TextButton") then
			v6.Activated:Connect(function()
				l__LastSelectedCall__2.Value = v6;
				print("ACTIVATED UI", l__LastSelectedCall__2.Value:GetFullName())
			end);
		end;
	end;
end;
local u5 = { "Greenville Fire Rescue" };

local l__CallDetails__6 = CallInfo
ScrollingFrame.ChildAdded:Connect(function(v: Instance)
    if v:IsA("TextButton") then
        print("found a new button !!!")
        v.Activated:Connect(function()
            l__CallDetails__6.Caller.Text = "Caller: "..v.Reference.Value:GetAttribute("Caller");
	        l__CallDetails__6.Info.Text = "Info: "..v.Reference.Value:GetAttribute("CallDesc");
        end)

        v.Attach.Activated:Connect(function()
            if l__LastSelectedCall__2.Value ~= nil and l__LastSelectedCall__2.Value:GetAttribute("Attached") == false then
                if workspace:FindFirstChild("CallNode") then
                    workspace:FindFirstChild("CallNode"):Destroy();
                end;
                local v9 = l__FD__4.Parent.CallNode:Clone();
                v9.Position = v.Reference.Value:GetAttribute("Location");
                v9.BillboardGui.Enabled = true;
                v9.Parent = workspace;
                l__LastSelectedCall__2.Value:SetAttribute("Attached", true);
                ScrollingFrame:FindFirstChild(v.Reference.Value.Name).Attach.Text = "UNATTACH";
            else
				for _,c in pairs(Get911()) do
					if c:FindFirstChild(v.Name) then
						l__LastSelectedCall__2.Value = ScrollingFrame:FindFirstChild(v.Name)
						print("GET 911", l__LastSelectedCall__2.Value:GetFullName())
					end
				end
                if workspace:FindFirstChild("CallNode") then
                    workspace:FindFirstChild("CallNode"):Destroy();
                end; 
                ScrollingFrame:FindFirstChild(v.Reference.Value.Name).Attach.Text = "ATTACH";
                l__LastSelectedCall__2.Value:SetAttribute("Attached", false);
            end;
        end);
    end
end)

function Reset911()
	UpperText.Text = "Greenville Dispatch - "..l__LocalPlayer__1.Team.Name
	for _,v in pairs(Get911()) do
		for _,v in pairs(ScrollingFrame:GetChildren()) do
			if v:IsA("TextButton") then v:Destroy() end
		end

		for _,p1 in pairs(v:GetChildren()) do
			print("found call")
				local v7 = Call:Clone();
				v7.Text = p1.Name .. " - " .. p1:GetAttribute("CallName");
				local v8 = Instance.new("ObjectValue");
				v8.Name = "Reference";
				v8.Value = p1;
				v8.Parent = v7;
				v7.Visible = true;
				v7.Name = p1.Name;
				v7:SetAttribute("Attached", false);
				v7.Parent = ScrollingFrame;
				task.spawn(u4);
				if table.find(teams[v.Name], game:GetService("Players").LocalPlayer.Team) then
					game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
						Text = "New call " .. p1.Name .. " - " .. p1:GetAttribute("CallName"), 
						Font = Enum.Font.SourceSansBold, 
						Color = TeamColor[v.Name]
					});
				end;
		end

		Add911(v.ChildAdded:Connect(function(p1)
			local v7 = Call:Clone();
			v7.Text = p1.Name .. " - " .. p1:GetAttribute("CallName");
			local v8 = Instance.new("ObjectValue");
			v8.Name = "Reference";
			v8.Value = p1;
			v8.Parent = v7;
			v7.Visible = true;
			v7.Name = p1.Name;
			v7:SetAttribute("Attached", false);
			v7.Parent = ScrollingFrame;
			task.spawn(u4);
			if table.find(teams[v.Name], game:GetService("Players").LocalPlayer.Team) then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
					Text = "New call " .. p1.Name .. " - " .. p1:GetAttribute("CallName"), 
					Font = Enum.Font.SourceSansBold, 
					Color = TeamColor[v.Name]
				});
			end;
		end));
		Add911(v.ChildRemoved:Connect(function(p2)
			if ScrollingFrame:FindFirstChild(p2.Name) then
				if l__LastSelectedCall__2.Value.Reference.Value == p2 then
					l__LastSelectedCall__2.Value = nil;
					if workspace:FindFirstChild("CallNode") then
						workspace:FindFirstChild("CallNode"):Destroy();
					end;
				end;
				ScrollingFrame:FindFirstChild(p2.Name):Destroy();
				task.spawn(u4);
			end;
		end));
	end
end
Reset911()
l__LocalPlayer__1:GetPropertyChangedSignal("Team"):Connect(function()
	for n,v in pairs(CallTab) do
		v:Disconnect()
		table.remove(CallTab, n)
	end
	Reset911()
end)

l__LastSelectedCall__2.Changed:Connect(function()
	local e = l__LastSelectedCall__2.Value.Reference
	print(e:GetFullName())
	if l__LastSelectedCall__2.Value == nil then
		l__CallDetails__6.Caller.Text = "Caller: N/A";
		l__CallDetails__6.Info.Text = "Info: N/A";
		-- ScrollingFrame:FindFirstChild(l__LastSelectedCall__2.Value.Reference.Value.Name).Attach.Text = "ATTACH";
		if workspace:FindFirstChild("CallNode") then
			workspace:FindFirstChild("CallNode"):Destroy();
		end;
		return;
	end;
	l__CallDetails__6.Caller.Text = "Caller: "..e.Value:GetAttribute("Caller");
	l__CallDetails__6.Info.Text = "Info: "..e.Value:GetAttribute("CallDesc");
	if l__LastSelectedCall__2.Value:GetAttribute("Attached") then
		ScrollingFrame:FindFirstChild(e.Value.Name).Attach.Text = "UNATTACH";
		return;
	end;
    ScrollingFrame:FindFirstChild(e.Value.Name).Attach.Text = "ATTACH";
end);

game:GetService("UserInputService").InputBegan:Connect(function(p3, p4)
	if not p4 and p3.KeyCode == Enum.KeyCode.LeftControl and l__LocalPlayer__1.Character ~= nil and l__LocalPlayer__1.Character:WaitForChild("Humanoid").SeatPart ~= nil and l__LocalPlayer__1.Character.Humanoid.SeatPart:IsA("VehicleSeat") then
		for _,v in pairs(Get911()) do
			if table.find(teams[v.Name], game:GetService("Players").LocalPlayer.Team) then
				l__Parent__2.Enabled = not l__Parent__2.Enabled;
			end
		end
	end;
end);

LP.Text = l__LocalPlayer__1.Name
ID.Text = l__LocalPlayer__1.UserId

l__CallDetails__6.Caller.Text = "Caller: N/A"
l__CallDetails__6.Info.Text   = "Info: N/A"
