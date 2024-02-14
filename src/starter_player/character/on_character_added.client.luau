local RS = game:GetService('ReplicatedStorage')
local STARTER_GUI = game:GetService('StarterGui')

local Inventory = require(RS.inventory)
local UserInterface = require(RS.user_interface)
local interfaces = RS.user_interface.interfaces

-- player related
local player = game:GetService('Players').LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild('Humanoid') :: Humanoid

local playerGui = player.PlayerGui

-- disable core health gui
STARTER_GUI:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
STARTER_GUI = nil

Inventory.initGui(
    playerGui,
    player.Name,
    player:GetAttribute("Level") or 1
)

local statusBar = require(interfaces.status_bar)
UserInterface.new(
    {
        name = "StatusBarGui",
        player_gui = playerGui,
    },
    statusBar.new(humanoid)
)
