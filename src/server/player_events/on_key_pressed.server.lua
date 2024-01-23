local onKeyPressed = game:GetService("ReplicatedStorage").events.on_key_pressed
local event = onKeyPressed.event
local handler = require(onKeyPressed.handler)

event.OnServerEvent:Connect(handler.onServer)