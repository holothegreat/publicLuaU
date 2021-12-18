getgenv().autoTap = true
getgenv().autoRebirth= true
getgenv().autoYen = true

local player = game:GetService("Players").LocalPlayer
local remotePath = game:GetService("ReplicatedStorage").Remotes.Events
local dataPath = game:GetService("Players").LocalPlayer.PlayerData
local yenPath = game:GetService("Workspace").Worlds.StarterWorld.YenSpawns:GetDescendants()

spawn(function() 
    while wait() do
        if not autoYen then break end
        for i, v in pairs(yenPath) do
            if v.Name == "IsSpawned" and v.Value == true and v.Parent then
                player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                wait(0.1)
            end
        end
    end
end)

spawn(function() 
    while wait() do
        if not autoTap then break end
        remotePath.UpdateCombo:FireServer()
        remotePath.Tap:FireServer()
    end
end)


spawn(function() 
    while wait() do
        if not autoRebirth then break end
        local Event = remotePath.Rebirth
        Event:FireServer(3)
    end
end)