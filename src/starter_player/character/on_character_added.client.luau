local RS = game:GetService('ReplicatedStorage')
local STARTER_GUI = game:GetService('StarterGui')

local on_tool = RS.events.on_tool
local OnToolHandler = require(on_tool.handler)
local OnToolEvent = on_tool.event

local InventoryGui = require(RS.inventory.gui)
local UserInterface = require(RS.user_interface)
local interfaces = RS.user_interface.interfaces

-- player related
local PLAYER = game:GetService('Players').LocalPlayer
local CHARACTER = PLAYER.Character or PLAYER.CharacterAdded:Wait()
local humanoid = CHARACTER:WaitForChild('Humanoid') :: Humanoid

local playerGui = PLAYER.PlayerGui

-- disable core health gui
STARTER_GUI:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
STARTER_GUI = nil

InventoryGui.init(
    playerGui,
    PLAYER.Name,
    PLAYER:GetAttribute("Level") or 1
)

local statusBar = require(interfaces.status_bar)
UserInterface.new(
    {
        name = "StatusBarGui",
        player_gui = playerGui,
    },
    statusBar.new(humanoid)
)

--Handlers
local child_added = function(instance: Instance)
    --TODO: filter tool
    local found = OnToolHandler.findScript(instance)
    if not found then
        OnToolEvent:FireServer(instance)
    end
end

CHARACTER.ChildAdded:Connect(child_added)
