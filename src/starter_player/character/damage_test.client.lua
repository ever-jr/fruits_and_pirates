local rs = game:GetService('ReplicatedStorage')

-- events
local inputEvent = game:GetService('UserInputService')
local onPlayerHit = rs.events.on_player_hit

inputEvent.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.T then
		local damage = 10
		onPlayerHit:FireServer(damage)
	end
end)
