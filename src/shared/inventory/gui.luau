--!nonstrict
local M = {}

M.toggle_gui = function(player_gui: PlayerGui): ()
    local inventory_gui = player_gui.Inventory
    inventory_gui.Enabled = not inventory_gui.Enabled
end

M.initGui = function(playerGui: PlayerGui, name: string, level: number)
    local inv = playerGui.Inventory
    local values = inv.Equipment.Stats.Values
    values.CharacterName.Text = name
    values.Level.Text = tostring(level)
end

local T = require(game:GetService("ReplicatedStorage").player_attributes.type)
M.updateAttribute = function(playerGui: PlayerGui, attribute: T.Attribute, new_value: number)
    local attributes = playerGui.Inventory.Equipment.Stats.Attributes

    local labels = attributes.Labels
    local label = labels:FindFirstChild(attribute) or labels.Default.Label:Clone()
    label.Name = attribute
    label.Text = attribute
    label.Parent = attributes

    local values = attributes.Values
    local value = values:FindFirstChild(attribute) or values.Default.Value:Clone()
    value.Name = attribute
    value.Text = tostring(new_value)
    value.Parent = attributes
end


return M
