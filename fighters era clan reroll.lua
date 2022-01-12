-- not working btw
function getClan() local clan = game:GetService("Players").LocalPlayer.Stats.Clan.Value return clan end
function getCash() local cash = game:GetService("Players").LocalPlayer.Stats.Cash.Value return cash end

getgenv().clans = {"Mikazuchi", "Kure", "Agito", "Gensai", "Ryo", "Ken", "Sen"}
while wait() do
    if table.find(getgenv().clans, getClan()) == nil and getCash() >= 50000 then
        local currentClan = getClan()
        local currentCash = getCash()
        game:GetService("ReplicatedStorage").Remotes.okoll:InvokeServer("???", "Sure, But its gonna cost $25000", "Okay")
        repeat wait() until currentClan ~= getClan()
        repeat wait() until currentCash ~= getCash()
        print(clan)
        print(cash)
    else
        print("no")
        break
    end
end