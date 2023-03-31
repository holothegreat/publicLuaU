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
    spawn(function()
        while wait() do
            if not getgenv().autoTread then break end
                local bar = game:GetService("Players").Iymu.PlayerGui.TrainingTreadmill.TrainingBar.Bar.AbsolutePosition.X
                wait(0.2)
                if bar >= 618 and bar <= 646 then
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

