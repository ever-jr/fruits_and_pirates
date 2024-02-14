local RS = game:GetService("ReplicatedStorage")
local event = RS.events.on_key_pressed

event.OnServerEvent:Connect(function(player: Player, input: string)
end)
