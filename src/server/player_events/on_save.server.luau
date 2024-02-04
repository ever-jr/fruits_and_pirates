local rs = game:GetService("ReplicatedStorage")
local pam = require(rs.player_attributes.manager)
local event = rs.events.on_save.event

event.OnServerEvent:Connect(function(player)
    pam.savePlayerAttributes(player)
end)