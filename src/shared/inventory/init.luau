local M = {}

local name = "inventory"

M.getInventory = function(player: Player): Folder
    local inventory = player:FindFirstChild(name) :: Folder?
    return inventory or Instance.new("Folder")
end

type ItemGuiver = {
    player: Player,
    item: Instance,
}

M.give_item = function(ig: ItemGuiver): ()
    local inventory = M.getInventory(ig.player)
    ig.item.Parent = inventory
end

-- GUI
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

return M
