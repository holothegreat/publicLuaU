getgenv().autoTread=false

local Plr = game:GetService("Players").LocalPlayer
local vu = game:GetService("VirtualUser")

local Win11Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Skribb11es/Win11UILib/main/main.lua", true))()
local username = game:GetService("Players").LocalPlayer.Name
local id = game:GetService("Players").LocalPlayer.UserId
local menu = Win11Lib.createMenu("Undisputed Boxers!", Enum.KeyCode.M, true, 1200, 600, "", username, id)
local tab1 = menu.addTab("Training", 1, true, 4796872342)
local tab2 = menu.addTab("Teleport", 2, false, 401280201)
local tab3 = menu.addTab("Shop", 3, false, 6762188594)
local tab4 = menu.addTab("Misc", 4, false, 6319138981)

function autoTread()
    local check = game:GetService("Players").LocalPlayer.PlayerGui.TrainingTreadmill.TrainingBar
    spawn(function()
        while wait() do
            if not getgenv().autoTread and check then break end
                local bar = game:GetService("Players").LocalPlayer.PlayerGui.TrainingTreadmill.TrainingBar.Bar.AbsolutePosition.X
                if bar >= 615 and bar <= 650 then
                    game:GetService("Players").LocalPlayer.PlayerGui.TrainingTreadmill.LS.RemoteEvent:FireServer("PushUp")
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.TrainingTreadmill.LS.RemoteEvent:FireServer("PushUpStart")
                end
        end
    end)
end

tab1.addToggle("Auto Treadmill", "treadtoggle", "Hop on treadmill then toggle.", false, function(bool)
    getgenv().autoTread = bool
    if bool then
        autoTread()
    end
end)

local c = game:GetService("Workspace").Stuffs:GetChildren()
for i = 1, #c do
    duplicate = i - 1
    if c[i]:IsA("Part") and tostring(c[i]) ~= tostring(c[duplicate]) then
    tab3.addButton(tostring(c[i]), c[i].BillboardGui.TextLabel.Text, function() 
        for _, ClickDetector in pairs(c[i]:GetDescendants()) do
            if (ClickDetector:IsA("ClickDetector")) then
                fireclickdetector(ClickDetector)
            end
            end
        end)
    end
end


-- game:GetService("Players").Iymu.PlayerGui.GymCard