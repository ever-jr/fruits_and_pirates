local RS = game:GetService("ReplicatedStorage")
local keys = require(RS.keys)
local event = RS.events.on_key_pressed

local toggle_inventory = function(player: Player)
    local player_gui = player.PlayerGui
    local inventory_gui = player_gui.Inventory
    inventory_gui.Enabled = not inventory_gui.Enabled
end

event.OnServerEvent:Connect(function(player: Player, input: string)
    if input == keys.toggle_inventory then
        toggle_inventory(player)
    end
end)
