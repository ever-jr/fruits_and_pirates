local UIS = game:GetService("UserInputService")
local RS = game:GetService("ReplicatedStorage")
local player = game:GetService("Players").LocalPlayer
local player_gui = player.PlayerGui

local Util = require(RS.util)
local Keys = require(RS.keys)
local Inventory = require(RS.inventory)

local event = RS.events.on_key_pressed
local listed_keys = Util.map_to_list(Keys)

UIS.InputBegan:Connect(function(input: InputObject, _: boolean)
    local key = input.KeyCode.Name
    local input_exist = table.find(listed_keys, key)
    print(input.KeyCode)
    if input_exist == nil then return end

    if key == Keys.toggle_inventory then
        Inventory.toggle_gui(player_gui)
    else
        event:FireServer(key)
    end
end)
