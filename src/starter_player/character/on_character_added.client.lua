local rs = game:GetService('ReplicatedStorage')
local starterGui = game:GetService('StarterGui')
local userInterface = require(rs.user_interface)

-- player related
local player = game:GetService('Players').LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid: Humanoid = character:WaitForChild('Humanoid')

local playerGui = player.PlayerGui

-- disable core health gui
starterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)

-- TODO: see if I can return the whole player variable without having too much trouble
-- create interface
userInterface.new({
    humanoid = humanoid,
    playerGui = playerGui,
})