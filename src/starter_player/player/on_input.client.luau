local UIS = game:GetService("UserInputService")
local RS = game:GetService("ReplicatedStorage")
local PLAYER = game:GetService("Players").LocalPlayer
local MOUSE = PLAYER:GetMouse()

-- Modules
local Util = require(RS.util)
local Keys = require(RS.keys)
local InventoryGui = require(RS.inventory.gui)

-- Events
local events = RS.events
local KeyPressed = events.on_key_pressed
local OnAttack = events.on_attack

local player_gui = PLAYER.PlayerGui
local listed_keys = Util.map_to_list(Keys)

-- HANDLERS
local handle_input = function(input: InputObject)
    local key = input.KeyCode.Name
    local input_exist = table.find(listed_keys, key)
    if input_exist == nil then return end

    if key == Keys.toggle_inventory then
        InventoryGui.toggle(player_gui)
    else
        KeyPressed:FireServer(key)
    end
end

local handle_mouse = function()
    OnAttack:FireServer()
end

-- EVENTS
UIS.InputBegan:Connect(handle_input)
MOUSE.Button1Down:Connect(handle_mouse)
