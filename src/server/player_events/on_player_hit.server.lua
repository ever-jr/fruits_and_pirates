local onPlayerHit = game:GetService("ReplicatedStorage").events.on_player_hit

onPlayerHit.OnServerEvent:Connect(function(player, damage)
	local humanoid = player.Character.Humanoid
	humanoid:TakeDamage(damage)
end)
