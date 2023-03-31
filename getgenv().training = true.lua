getgenv().training = true

function stam()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name == "Jump Rope" then
            v.Parent = game:GetService("Players").LocalPlayer.Character
            wait()
        end
    end
    while wait() do
        if training then
            for i=1,5 do
                game:GetService("ReplicatedStorage").Stamina:FireServer()
            end
        else break end
    end
end

function push()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name == "Weight" then
            v.Parent = game:GetService("Players").LocalPlayer.Character
            wait()
        end
    end
    while wait() do
        if training then
            for i=1,5 do            
                game:GetService("ReplicatedStorage").Weight:FireServer()
            end
        else break end
    end
end

function def()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name == "Advance Defense" then
            v.Parent = game:GetService("Players").LocalPlayer.Character
            wait()
        end
    end
    while wait() do
        if training then
            for i=1,5 do
                game:GetService("ReplicatedStorage").AdvDefense:FireServer()
            end
        else break end
    end
end

function sq()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name == "Squat" then
            v.Parent = game:GetService("Players").LocalPlayer.Character
            wait()
        end
    end
    while wait() do
        if training then
            for i=1,5 do
                game:GetService("ReplicatedStorage").Squat:FireServer()
            end
        else break end
    end
end

--coroutine.wrap(stam)()
--coroutine.wrap(push)()
coroutine.wrap(def)()
--coroutine.wrap(sq)()