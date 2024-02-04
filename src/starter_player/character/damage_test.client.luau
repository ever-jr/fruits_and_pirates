local rs = game:GetService('ReplicatedStorage').events

-- events
local inputEvent = game:GetService('UserInputService')
local onPlayerDamaged = rs.on_player_damaged.event

inputEvent.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.T then
		local damage = 10
		onPlayerDamaged:FireServer(damage)
	end
end)
