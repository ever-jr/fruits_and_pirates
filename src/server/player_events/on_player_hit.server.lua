local onPlayerDamaged = game:GetService('ReplicatedStorage').events.on_player_damaged
local event = onPlayerDamaged.event
local handler = require(onPlayerDamaged.handler)

event.OnServerEvent:Connect(handler.onServer)
