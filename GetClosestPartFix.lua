module = {}
function module:GetClosestPart(target: BasePart, Folder: Folder)
    local Parts = {}
    print(typeof(Folder))
    if typeof(Folder) == "table" then
        for _, Part in pairs(Folder) do
            if Part:IsA("Model") then
                Part = Part:FindFirstChildWhichIsA("BasePart")
            end
            if Part:IsA("BasePart") then
                local Temp = {
                               Part = nil;
                               Distance = nil;
                             }
                local FakePos = Vector3.new(Part.Position.X, target.Position.Y, Part.Position.Z)
                local distance = (target.Position -FakePos).Magnitude
                Temp.Part    = Part
                Temp.Distance = distance
                table.insert(Parts, Temp)
                    Temp = nil
            end
        end
    else
        for _, Part in pairs(Folder:GetChildren()) do
            print(v)
            if Part:IsA("Model") then
                print("model fix")
                Part = Part:FindFirstChildWhichIsA("BasePart")
            end
            if Part:IsA("BasePart") then
                local Temp = {
                               Part = nil;
                               Distance = nil;
                             }
                local FakePos = Vector3.new(Part.Position.X, target.Position.Y, Part.Position.Z)
                local distance = (target.Position -FakePos).Magnitude
                Temp.Part    = Part
                Temp.Distance = distance
                table.insert(Parts, Temp)
                    Temp = nil
            end
        end
    end
        
        local min = math.huge
        local Part 
        for i,v in ipairs(Parts) do
            min = math.min(min, v.Distance)
        end
        for _,v in ipairs(Parts) do
            if v.Distance == min then
                Part = v
            end
        end
        return Part.Part
    end
return module
