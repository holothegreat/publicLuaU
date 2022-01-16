getgenv().autoCash=false

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

tab4.addToggle("Cash Farm", "cashtoggle", "OP cash farm.", false, function(bool)
    getgenv().autoCash = bool
    if bool then
        autoCash()
    end
end)