local rs = game:GetService('ReplicatedStorage')
local starterGui = game:GetService('StarterGui')
local userInterface = require(rs.user_interface)

-- player related
local player = game:GetService('Players').LocalPlayer

-- disable core health gui
starterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)

-- create interface
userInterface.new(player)
