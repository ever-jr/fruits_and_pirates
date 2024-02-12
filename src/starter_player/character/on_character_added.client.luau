local rs = game:GetService('ReplicatedStorage')
local starterGui = game:GetService('StarterGui')
local userInterface = require(rs.user_interface)

local interfaces = rs.user_interface.interfaces

-- player related
local player = game:GetService('Players').LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild('Humanoid') :: Humanoid

local playerGui = player.PlayerGui

-- disable core health gui
starterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
starterGui = nil

local statusBar = require(interfaces.status_bar)
userInterface.new(
    {
        name = "StatusBarGui",
        player_gui = playerGui,
    },
    statusBar.new(humanoid)
)
