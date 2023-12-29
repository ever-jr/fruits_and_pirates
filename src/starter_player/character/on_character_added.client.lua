local rs = game:GetService("ReplicatedStorage")
local starterGui = game:GetService("StarterGui")
local userInterface = require(rs.user_interface)

local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character.Humanoid

-- disable core health gui
starterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)

-- event handlers
local healthChanged = humanoid.HealthChanged

-- create interface
userInterface.new(player)
