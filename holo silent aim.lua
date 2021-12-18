-- not working btw

_G.silentaim = true

local players = game:GetService("Players")
local plr = players.LocalPlayer
local mouse = plr:GetMouse()
local camera = game.Workspace.CurrentCamera
local teamcheck = true

function ClosestPlayerToMouse()
	local dist = math.huge
	local target = nil
	for i,v in pairs(players:GetPlayers()) do
		if v ~= plr and v.Character and v.Character:FindFirstChild("Head") and teamcheck and _G.silentaim and v.TeamColor ~= plr.TeamColor and v.Character.Humanoid.Health ~= 0 then
			local screenpoint = camera:WorldToScreenPoint(v.Character.Head.Position)
			local check = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
			if check < dist then
				check = dist
				target = v
			end
		end
	end
	return target
end

local mt = getrawmetatable(game)
setreadonly(mt, false)
local namecall = mt.__namecall

	mt.namecall = function(self,...)
		local args = {...}
		local method = getnamecallmethod()

		if tostring(self) == "" and tostring(method) == "FireServer" then
			args[1] = ClosestPlayerToMouse().Character.Humanoid
			args[3] = "Head"
			return self.FireServer(self,unpack(args))
		end
		return namecall(self,...)
	end
end