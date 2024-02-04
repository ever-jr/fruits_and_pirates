--!strict

local player_attributes = game:GetService("ReplicatedStorage").player_attributes
--- Data Store
local ds = require(player_attributes.data_store)
--- Type
local t = require(player_attributes.type)

--- Player Attributes Manager
local pam = {}

--- ON SERVER ONLY
pam.addAttributesToPlayer = function(player: Player)
    local userId = string.format("%d", player.UserId)
    local attributes = ds.load(userId)

    for attribute, value in pairs(attributes) do
        player:SetAttribute(attribute, value)
    end
end

pam.savePlayerAttributes = function(player: Player)
    print("saving player data:", player.Name)
    local userId = string.format("%d", player.UserId)
    local attributes: t.PlayerAttributes = {
        fruit = player:GetAttribute("fruit"),
        strength = player:GetAttribute("strength"),
        constitution = player:GetAttribute("constitution"),
        dexterity = player:GetAttribute("dexterity"),
        mind = player:GetAttribute("mind"),
    }
    print("player's attributes:", attributes)
    local errorMessage = ds.save(userId, attributes)

    if errorMessage ~= nil then
        error(errorMessage)
    end
end


return pam