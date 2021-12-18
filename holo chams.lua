-- not working btw

getgenv().chamToggle = true

function chams()
    local player = game:GetService("Players").LocalPlayer
    local players = game:GetService("Players"):GetPlayers()
    spawn(function()
    while wait() do
        if not chamToggle then
            for _,c in pairs(players.Character:GetChildren()) do
                if c:IsA("Part") or c:IsA("MeshPart") then
                    c.cham:Destroy() 
            break 
        end
            for _,z in pairs(players) do
                if z.Name ~= player.Name then
                    for _,x in pairs(z.Character:GetChildren()) do
                        if x:IsA("Part") or x:IsA("MeshPart") then
                            if not x:FindFirstChild("BoxHandleAdornment") then
                                x.Transparency = 1
                                cham = Instance.new("BoxHandleAdornment", x)
                                cham.AlwaysOnTop = true
                                cham.Adornee = x
                                cham.Size = x.Size
                                cham.Color3 = Color3.new(0,1,0)
                            end
                        end
                    end
                end
            end
        end
    end
end
end)
end