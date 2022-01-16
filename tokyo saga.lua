getgenv().autoCash=false
getgenv().removeSafe=false

local Plr = game:GetService("Players").LocalPlayer
local vu = game:GetService("VirtualUser")

local Win11Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Skribb11es/Win11UILib/main/main.lua", true))()
local username = game:GetService("Players").LocalPlayer.Name
local id = game:GetService("Players").LocalPlayer.UserId
local menu = Win11Lib.createMenu("Tokyo Saga", Enum.KeyCode.M, true, 1200, 600, "", username, id)
local tab1 = menu.addTab("Training", 1, true, 4796872342)
local tab2 = menu.addTab("Teleport", 2, false, 401280201)
local tab3 = menu.addTab("Shop", 3, false, 6762188594)
local tab4 = menu.addTab("Misc", 4, false, 6319138981)

function autoCash()
    spawn(function()
        while wait() do
            if not getgenv().autoCash then break end
                fireclickdetector(game:GetService("Workspace").NPCS["Quest Repair"].ClickDetector)
                game:GetService("ReplicatedStorage").Quest.Posterdos:FireServer()
        end
    end)
end

function removeSafe()
    spawn(function()
        while wait() do
            if not getgenv().removeSafe then break end
                repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("SafeZone")
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("SafeZone"):Destroy()
        end
    end)
end

local c = game:GetService("Workspace").Vender:GetChildren()
for i = 1, #c do
    duplicate = i - 1
    if c[i]:IsA("Model") or c[i]:IsA("Part") and tostring(c[i]) ~= tostring(c[duplicate]) then
    tab3.addButton(tostring(c[i]), "", function() 
        for _, ClickDetector in pairs(c[i]:GetDescendants()) do
            if (ClickDetector:IsA("ClickDetector")) then
                fireclickdetector(ClickDetector)
            end
            end
        end)
    end
end


tab4.addToggle("No Zone", "zonetoggle", "Removes safe zone.", false, function(bool)
    getgenv().removeSafe = bool
    if bool then
        removeSafe()
    end
end)

tab4.addToggle("Cash Farm", "cashtoggle", "OP cash farm.", false, function(bool)
    getgenv().autoCash = bool
    if bool then
        autoCash()
    end
end)