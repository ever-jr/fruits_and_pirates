local get = {}

get.inventory_physical = function(player: Player): Folder
    local inventory = player:FindFirstChild("Inventory") :: Folder?
    return inventory or Instance.new("Folder")
end

get.inventory_gui = function(starter_gui: StarterGui)
    local inventory = starter_gui.Inventory
end

return get
