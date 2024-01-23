local rs = game:GetService('ReplicatedStorage')
local starterGui = game:GetService('StarterGui')
local userInterface = require(rs.user_interface)
local interfaces = rs.user_interface.interfaces

-- player related
local player = game:GetService('Players').LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid: Humanoid = character:WaitForChild('Humanoid')

local playerGui = player.PlayerGui

-- disable core health gui
starterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)

local statusBar = require(interfaces.status_bar)
userInterface.new({
    playerGui = playerGui,
    interfaceBuilder = function()
        return statusBar.new(humanoid)
    end
})

local save = require(interfaces.save)
userInterface.new({
    playerGui = playerGui,
    interfaceBuilder = function()
        return save.new()
    end,
})

rs = nil
starterGui = nil
userInterface = nil
interfaces = nil
player = nil
character = nil
playerGui = nil
statusBar = nil
save = nil