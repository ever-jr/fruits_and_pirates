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

return M
