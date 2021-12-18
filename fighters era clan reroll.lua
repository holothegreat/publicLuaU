-- not working btw

local clan = game:GetService("Players").LocalPlayer.Stats.Clan.Value
local cash = game:GetService("Players").LocalPlayer.Stats.Cash.Value
getgenv().clans = {"Mikazuchi", "Kure", "Agito", "Gensai", "Ryo", "Ken", "Sen"}

while wait() do
    if table.find(getgenv().clans, clan) == nil and cash >= 50000 then
        game:GetService("ReplicatedStorage").Remotes.okoll:InvokeServer("???", "Sure, But its gonna cost $25000", "Okay")
        wait(0.1)
        local clan = game:GetService("Players").LocalPlayer.Stats.Clan.Value
        local cash = game:GetService("Players").LocalPlayer.Stats.Cash.Value
        print(clan)
        print(cash)
    else
        print("no")
        break
    end
end

