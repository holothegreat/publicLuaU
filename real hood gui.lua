function _G.findui()
    for _,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
        if v.Name == "Realistic Hood" and v:IsA("Frame") and v.Parent:IsA("ScreenGui") then
            realui = v.Parent
        end
    end
    return realui
end

local lib = loadstring(game:HttpGet"https://fluxteam.xyz/external-files/lib.lua")()
local player = game:GetService("Players").LocalPlayer
local window = lib:CreateWindow("Realistic Hood")
local originalSpeed = player.Character.Humanoid.WalkSpeed
getgenv().espToggle = false
getgenv().flyToggle = false
getgenv().silentToggle = false
getgenv().autoCash = false

function destroyui()
    player.Character.Humanoid.WalkSpeed = originalSpeed
    getgenv().espToggle = false
    getgenv().flyToggle = false
    getgenv().silentToggle = false
    getgenv().autoCash = false
    _G.findui():Destroy()
end

function firecd()
    local gameSpace = game:GetService("Workspace")
    for i,v in pairs(gameSpace:GetDescendants()) do
        if v:IsA("ClickDetector") and v.Parent.Parent.Name == "WeaponSpawn" then
            fireclickdetector(v)
        end
    end
end

function infmags()
    local playerBackpack = game:GetService("Players").LocalPlayer.Backpack
    for i,v in pairs(playerBackpack:GetDescendants()) do
        if v.Name == "CConfig" and v.Parent.Name == "ConfigMods" then
            mod = require(v)
            for att, val in pairs(mod) do
                if string.match(tostring(att), "Mag") then
                    mod[att] = math.huge
                end
            end
        end
    end
end

function rage()
    local playerBackpack = game:GetService("Players").LocalPlayer.Backpack
    for i,v in pairs(playerBackpack:GetDescendants()) do
        if v.Name == "CConfig" and v.Parent.Name == "ConfigMods" then
            mod = require(v)
            mod.BulletPhysics = Vector3.zero
            mod.BulletSpeed = math.huge
            mod.FireMode = 2
            mod.Firerate = 0.01
            for att,val in pairs(mod) do
                if string.match(tostring(att), "Recoil") or string.match(tostring(att), "Kick") or string.match(tostring(att), "Shake") then
                    mod[att] = 0
                end
                if string.match(tostring(att), "Ammo") or string.match(tostring(att), "Mag") or string.match(tostring(att), "Damage") then
                    mod[att] = math.huge
                end
            end
        end
    end
end

function cash()
    local playerHead = game:GetService("Players").LocalPlayer.Character.Head
    spawn(function() 
    while wait(0.5) do
        if not autoCash then break end
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("IntValue") and v.Parent:IsA("MeshPart") and v.Name == "Cash" and v.Parent.name == "Cash" then
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait()
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end
        end
    end)
end

window:AddButton("destroy ui", function()
    destroyui()
end)

window:AddButton("firecd", function()
    firecd()
end)

window:AddButton("inf. mags", function()
    infmags()
end)

window:AddButton("rage", function()
    rage()
end)

window:AddToggle("auto cash", function(bool)
    autoCash = bool
    if autoCash then
        cash()
    end
end)


window:AddToggle("esp", function(bool)
    espToggle = bool
    if espToggle then
        print()
    end
end)

window:AddToggle("silent aim", function(bool)
    silentToggle = bool
    if espToggle then
        print()
    end
end)

window:AddToggle("noclip fly", function(bool)
    flyToggle = bool
    if flyToggle then
        print()
    end
end)

window:AddSlider("walkspeed",16, 100, 0, function(var)
    player.Character.Humanoid.WalkSpeed = var
end)