--!strict

local players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local pam = require(rs.player_attributes.manager)

players.PlayerAdded:Connect(function(player)
    pam.addAttributesToPlayer(player)
end)

players.PlayerRemoving:Connect(function(player)
    pam.savePlayerAttributes(player)
end)
