local rs = game:GetService('ReplicatedStorage')
local userInterface = require(rs.user_interface)
local events = rs.events
local onPlayerHit = events.on_player_hit

local player = game:GetService('Players').LocalPlayer

userInterface.new(player, onPlayerHit)