getgenv().autoRoad=false
getgenv().autoSpar=false
getgenv().autoTrain=false
getgenv().autoStam=false
getgenv().autoCash=false

local Plr = game:GetService("Players").LocalPlayer
local vu = game:GetService("VirtualUser")

local Win11Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Skribb11es/Win11UILib/main/main.lua", true))()
local username = game:GetService("Players").LocalPlayer.Name
local id = game:GetService("Players").LocalPlayer.UserId
local menu = Win11Lib.createMenu("Fighter's Era", Enum.KeyCode.M, true, 1200, 600, "", username, id)
local tab1 = menu.addTab("Training", 1, true, 4796872342)
local tab2 = menu.addTab("Teleport", 2, false, 401280201)
local tab3 = menu.addTab("Shop", 3, false, 6762188594)
local tab4 = menu.addTab("Misc", 4, false, 6319138981)

function autoCash()
    spawn(function()
        while wait() do
            if not getgenv().autoCash then break end
                game:GetService("ReplicatedStorage").Remotes.okoll:InvokeServer("Robby Kure", "I have a letter that I need to get to Tan, But Im so slow that I will be late.", "Alright")
                fireclickdetector(game:GetService("Workspace").Npcs["Tan Sen"].ClickDetector)
                game:GetService("ReplicatedStorage").Remotes.okoll:InvokeServer("Tan Sen")
        end
    end)
end

function clanReroll()
    spawn(function()
        game:GetService("ReplicatedStorage").Remotes.okoll:InvokeServer("???", "Sure, But its gonna cost $25000", "Okay")
    end)
end

function styleReroll()
    spawn(function()
        game:GetService("ReplicatedStorage").Remotes.okoll:InvokeServer("???", "Sure, But its gonna cost $35000", "Alright")
    end)
end

function depositAll()
    spawn(function()
        game:GetService("ReplicatedStorage").Remotes.yes1:FireServer("Deposit", math.huge)
    end)
end

function withdrawAll()
    spawn(function()
        game:GetService("ReplicatedStorage").Remotes.yes1:FireServer("Withdraw", math.huge)
    end)
end

function hideName()
    spawn(function()
        for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
          if v:IsA("Weld") and v.Parent.Name == "Head" and v.Parent.Parent.Parent.Name == Plr.Name and v.Parent.Parent:FindFirstChild("Humanoid") then
              v.Parent:Destroy()
          end
        end
    end)
end

function autoRoad()
    local c = game:GetService("Workspace").yeslol.mmm["Roadwork $300"].ClickDetector
    spawn(function()
        if not Plr.Backpack:FindFirstChild("Roadwork") and not Plr.Character:FindFirstChild("Roadwork") then
            fireclickdetector(c)
            Plr.Backpack:WaitForChild("Roadwork")
            Plr.Character.Humanoid:EquipTool(Plr.Backpack:FindFirstChild("Roadwork"))
        end
        while wait() do
            if not getgenv().autoRoad then break end
                Plr.Character.Humanoid:EquipTool(Plr.Backpack:FindFirstChild("Roadwork"))
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7897.0024414063, 37.743381500244, -495.65093994141)
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8164, 37.743381500244, -499)
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8162, 37.743381500244, -672)
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7963, 37.743381500244, -682)
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7961, 37.743381500244, -500)
                wait(0.1)
                vu:Button1Down(Vector2.new(0,0), game.Workspace.CurrentCamera.CFrame)
                wait()
                vu:Button1Up(Vector2.new(0,0), game.Workspace.CurrentCamera.CFrame)
        end
    end)
end

tab1.addToggle("Roadwork", "roadtoggle", "Buy roadwork before toggle.", false, function(bool)
    getgenv().autoRoad = bool
    if bool then
        autoRoad()
    end
end)

tab2.addButton("Boxing", "Top Floor Gym", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7881.3203125, 53.989902496338, -831.41485595703) end)
tab2.addButton("Hospital", "Inside Reception", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7566.4975585938, 38.219512939453, -1209.7269287109) end)
tab2.addButton("Purgatory", "Rogue Lineage", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7265.3349609375, -12.352508544922, -26.589559555054) end)
tab2.addButton("Apartments", "Saleswoman", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7699.3725585938, 38.190902709961, -442.61679077148) end)
tab2.addButton("Karate", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7591.892578125, 38.191326141357, -536.75494384766) end)
tab2.addButton("Sumo", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8307.615234375, 38.321746826172, -522.90911865234) end)
tab2.addButton("Mikazuchi", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7873.5903320313, 38.011745452881, -1241.9094238281) end)
tab2.addButton("Wrestling", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7922.2021484375, 38.011745452881, -1155.4320068359) end)
tab2.addButton("Advance", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8022.0581054688, 38.011745452881, -1216.2735595703) end)
tab2.addButton("Agito", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7881.3203125, 53.989902496338, -831.41485595703) end)
tab2.addButton("Muay Thai", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7890.1328125, 38.320503234863, -433.13955688477) end)
tab2.addButton("Kure", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7766.7670898438, 38.146289825439, -598.43859863281) end)
tab2.addButton("Taekwondo", "Trainer", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7977.796875, 80.246505737305, -1062.7330322266) end)
    

local c = workspace.yeslol:GetChildren()
for i = 1, #c do
    duplicate = i - 1
    if c[i]:IsA("Model") and tostring(c[i]) ~= tostring(c[duplicate]) then
    tab3.addButton(tostring(c[i]), "", function() 
        for _, ClickDetector in pairs(c[i]:GetDescendants()) do
            if (ClickDetector:IsA("ClickDetector")) then
                fireclickdetector(ClickDetector)
            end
            end
        end)
    end
end

local c = workspace.yeslol.mmm:GetChildren()
for i = 1, #c do
    duplicate = i - 1
    if c[i]:IsA("Model") and tostring(c[i]) ~= tostring(c[duplicate]) then
    tab3.addButton(tostring(c[i]), "", function() 
        for _, ClickDetector in pairs(c[i]:GetDescendants()) do
            if (ClickDetector:IsA("ClickDetector")) then
                fireclickdetector(ClickDetector)
            end
            end
        end)
    end
end

tab4.addButton("Hide Name", "Disables tag above head.", function() hideName() end)
tab4.addButton("Clan Reroll", "Resets your clan for $25000.", function() clanReroll() end)
tab4.addButton("Style Reset", "Resets your style for $35000.", function() styleReroll() end)
tab4.addToggle("Cash Farm", "cashtoggle", "OP cash farm.", false, function(bool)
    getgenv().autoCash = bool
    if bool then
        autoCash()
        wait(0.5)
        autoCash()
    end
end)
tab4.addButton("Withdraw All", "Withdraw all your money to bank.", function() withdrawAll() end)
tab4.addButton("Deposit All", "Deposit all your money to bank.", function() depositAll() end)