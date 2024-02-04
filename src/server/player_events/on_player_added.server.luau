local players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local pam = require(rs.player_attributes.manager)
local weapon_builder = require(rs.item_builder.weapon)

players.PlayerAdded:Connect(function(player)
    pam.addAttributesToPlayer(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local weapon = weapon_builder.create({
        name = "DaggerDahora",
    })
    weapon.Parent = character
end)

players.PlayerRemoving:Connect(function(player)
    pam.savePlayerAttributes(player)
end)
