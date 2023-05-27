assert(Drawing, "Your exploit does not support Drawing Library.")
local Global = getgenv and getgenv() or _G

lib = {}

-- Drawing Values
local Select = {}
local CC     = workspace.CurrentCamera
function TF(T, A)
    for _,v in pairs(T) do
        if v == A then return true end
    end
    return false
end


function TR(T, A)
    for n,v in pairs(T) do
        if v == A then table.remove(T, n) end
    end
    return T
end


-- Default for ESP Creation
local DrawData = {
    ["Type"]     = "Line",
    ["Instance"] = Instance.new("Part"),
    ["Text"]     = true,
    ["Name"]     = "name",
    ["Color"]    = Color3.new(255, 255, 255)
}

function lib:Create(Data: table)
    -- Data Table Check
    if type(Data) ~= "table" or Data == nil then error("No Data Table.") return end

    -- Values (for easier scripting)
    local Part  = Data["Instance"] or nil
    local DType = Data["Type"]     or DrawData["Type"]
    local Color = Data["Color"]    or DrawData["Color"]
    local DText = Data["Text"]     or DrawData["Text"]
    local TText = Data["Name"]     or nil

    -- Val Check
    if typeof(Part) ~= "Instance" then error("Instance expected got "..tostring(typeof(Part))) end
    if not Part:IsA("BasePart") then error("BasePart expected got "..tostring(Part.ClassName)) end

    if typeof(Color) ~= "Color3" then
        if typeof(Color) == "string" then Color = string.lower(Color) if Color ~= "random" then Color = DrawData["Color"] end else
          error("Color3 or string expected got", typeof(Color))
        end
        else
        Color = DrawData["Color"]
    end

    -- ESP Skeleton
    local Trace, Text = Drawing.new("Line"), nil
    local TName = TText or Part.Name
    if DText then Text = Drawing.new("Text") end
    if type(Color) ~= "string" then
       Trace.Color = Color
       if Text then
        Text.Color = Color
       end
    end

    if Text then      
        Text.Text       = TName
        Text.Visible    = true
        Text.Font       = Drawing.Fonts["Monospace"]
    end
    Trace.Visible   = true
    Trace.Thickness = 2
        local fix = true
        local ESPLoop
        ESPLoop = game:GetService("RunService").RenderStepped:Connect(function()
            if fix == false then ESPLoop:Disconnect() ESPLoop = nil return end
            if (Part.Parent == nil or Part == nil) or not TF(Select, Part) then Trace:Remove() if Text then Text:Remove() end Select = TR(Select, Part)  fix = false ESPLoop:Disconnect() ESPLoop = nil return end
            local chr = game:GetService("Players").LocalPlayer.Character
            if not chr then return end
            if not chr:FindFirstChild("HumanoidRootPart") then return end
            
            local Vector, onScreen = CC:worldToViewportPoint(Part.Position)
            if not onScreen then
                if Text then Text.Visible = false end
                Trace.Visible = false
                return
            end
            if Text then Text.Visible = true end
            Trace.Visible = true
            if Color == "random" then
                local t = 5
                local hue = tick() % t / t
	            local rgb = Color3.fromHSV(hue, 1, 1)
                Trace.Color =  rgb
                Text.Color = rgb
            end
            -- local CurPlr = CC:worldToViewportPoint(chr.HumanoidRootPart.Position)
                Trace.From    = Vector2.new(CC.ViewportSize.X / 2, CC.ViewportSize.Y / 1)
                Trace.To      = Vector2.new(Vector.X, Vector.Y)
                if Text then 
                    Text.Position = Vector2.new(Vector.X, Vector.Y)
                    local magnitude = math.abs((chr.HumanoidRootPart.Position - Part.Position).Magnitude) 
                    Text.Text = TName.." | "..tostring(math.floor(magnitude))
                end
        end)

    table.insert(Select, Part)
end

function lib:Remove(Part: BasePart)
    if typeof(Part) ~= "Instance" then error("Instance expected got", typeof(Part)) end
    if not Part:IsA("BasePart") then error("BasePart expected got", Part.ClassName) end
    if TF(Select, Part) then
        Select = TR(Select, Part)
        print(TF(Select, Part))
    end
end
	
function lib:Clear()
    for _,v in next, Select do
	TF(Select, v)
    end
end

return lib
