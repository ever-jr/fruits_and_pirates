--!strict
local M = {}

local name = "inventory"

M.getInventory = function(player: Player): Folder
    local inventory = player:FindFirstChild(name) :: Folder?
    return inventory or Instance.new("Folder")
end

return M