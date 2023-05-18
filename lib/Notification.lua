-- Gui to Lua
-- Version: 3.2

-- Instances:
local global = getgenv and getgenv() or _G

local Notifications = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Pattern = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TimerHandler = Instance.new("Frame")
local NotifTimer = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Timer = Instance.new("Frame")

--Properties:
if global.UH__NOTIF__Destroy then
    global.UH__NOTIF__Destroy()
end

global.UH__NOTIF__Destroy = function()
    Notifications:Destroy()
end

Notifications.Name = "Notifications-UH"
local Par = game:GetService("CoreGui")
if gethui then
    Par = gethui()
end
Notifications.Name = "_NOTIF_"..tostring(game.PlaceId).."_UH_"..tostring(os.time())
local synprotect = nil
if (syn and syn.protect_gui) then
    synprotect = syn.protect_gui 
end
if synprotect and not gethui then
    synprotect(Notifications)
end
Notifications.Parent = Par
Notifications.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notifications.DisplayOrder = 100

Frame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame.Position = UDim2.new(0.439655185, 0, 0.730519533, 0)
Frame.Size = UDim2.new(0, 376, 0, 84)
Frame.ClipsDescendants = true

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Frame

Pattern.Name = "Pattern"
Pattern.Parent = Frame
Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pattern.BackgroundTransparency = 1.000
Pattern.BorderSizePixel = 0
Pattern.Position = UDim2.new(-0.312413961, 0, -0.913153827, 0)
Pattern.Size = UDim2.new(0, 610, 0, 238)
Pattern.ZIndex = 0
Pattern.Image = "rbxassetid://121480522"
Pattern.ImageTransparency = 0.600
Pattern.ScaleType = Enum.ScaleType.Tile
Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern.TileSize = UDim2.new(0, 45, 0, 45)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0186170209, 0, 0.0700625479, 0)
TextLabel.Size = UDim2.new(0, 363, 0, 73)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "N/A"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

TimerHandler.Name = "TimerHandler"
TimerHandler.Parent = Frame
TimerHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimerHandler.BackgroundTransparency = 1
TimerHandler.BorderColor3 = Color3.fromRGB(255, 0, 0)
TimerHandler.BorderSizePixel = 0
TimerHandler.Position = UDim2.new(0, 0, 0.952380955, 0)
TimerHandler.Size = UDim2.new(1, 0, 0.0476190485, 0)

NotifTimer.Name = "NotifTimer"
NotifTimer.Parent = TimerHandler
NotifTimer.AnchorPoint = Vector2.new(0.5, 0.5)
NotifTimer.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
NotifTimer.BorderSizePixel = 0
NotifTimer.Position = UDim2.new(0, 0, 0.5, 0)
NotifTimer.Size = UDim2.new(0, 10, 1.25, 0)
NotifTimer.AutoButtonColor = false
NotifTimer.Font = Enum.Font.SourceSans
NotifTimer.Text = ""
NotifTimer.TextColor3 = Color3.fromRGB(0, 0, 0)
NotifTimer.TextSize = 14.000

UICorner_2.Parent = NotifTimer

Timer.Name = "Timer"
Timer.Parent = TimerHandler
Timer.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Timer.BorderColor3 = Color3.fromRGB(255, 0, 0)
Timer.BorderSizePixel = 0
Timer.Position = UDim2.new(0, 0, 0, 0)
Timer.Size = UDim2.new(0, 0, 1, 0)

local TweenService = game:GetService("TweenService")

local Notifs = {}
function Notifs:Notify(Message: string, tim: number)
    task.spawn(function()
    if typeof(tim) ~= "number" then tim = 1 end
    local C = Frame:Clone()
    C.Name = "Notification-"..tostring(#Notifications:GetChildren() + 1)
    --warn("Starting Notification", C.Name)
    C.TextLabel.Text = Message
    C.Parent = Notifications

    C.AnchorPoint = Vector2.new(1, 1)
    local YScale = Notifications:FindFirstChild("Notification-"..tostring(#Notifications:GetChildren() - 1))
    if YScale then YScale = YScale.Position.Y.Scale - 0.12 else YScale = 1 end
    --print(YScale)
    C.Position = UDim2.new( 1.5, 0, YScale, 0 )
    TweenService:Create(C, TweenInfo.new(0.5), {Position = UDim2.fromScale(1, C.Position.Y.Scale)}):Play()
    wait(0.5)

    local truetime = (tim * 100) / 2 -- in MS
    local Val, stop = 0, 0

    function Remove(S: Frame, start)
    task.spawn(function()
        --print("Removing", start)
        local en = os.clock()
        --print("Time taken :", os.difftime(en, start), "s")
        TweenService:Create(S, TweenInfo.new(1), {Position = UDim2.fromScale(1.5, S.Position.Y.Scale)}):Play()
        wait(0.4)
        --print("Removing", S:GetFullName())
        S:Destroy()
        for _,v in next, Notifications:GetChildren() do
            if v.Position.Y.Scale + 0.12 > 1 then continue end
            v.Position = UDim2.fromScale(v.Position.X.Scale, v.Position.Y.Scale + 0.12)
        end
    end)
    end
    local start = os.clock()
        local Val, h = 0, nil
        h = game:GetService("RunService").Stepped:Connect(function()
        if stop == 1 then h = nil return end
            Val += 1
            C.TimerHandler.NotifTimer.Position = UDim2.new(Val/truetime,0,.5,0)
            C.TimerHandler.Timer.Size = UDim2.new(Val/truetime, 0, 0.5, 0)
            if Val == truetime then
                --warn(C.Name, "finished")
                Remove(C) 
                stop = 1
                h:Disconnect()
                h = nil
                end
        end)
    end)
end

return Notifs
