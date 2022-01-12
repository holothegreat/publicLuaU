function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local tweenSpeed = 1

local speaker = game:GetService("Players").LocalPlayer
addcmd('tweengotocamera',{'tweengotocam','tgotocam','ttocam'},function(args, speaker)
	game:GetService("TweenService"):Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = workspace.Camera.CFrame}):Play()
end)
