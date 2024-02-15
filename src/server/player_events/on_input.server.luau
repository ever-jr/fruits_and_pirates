local RS = game:GetService("ReplicatedStorage")

--Events
local events = RS.events
local KeyPressed = events.on_key_pressed

--Handlers
local input_handler = function(player: Player, input: string)
end

--Connections
KeyPressed.OnServerEvent:Connect(input_handler)
