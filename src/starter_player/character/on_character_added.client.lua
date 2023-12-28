local RS = game:GetService('ReplicatedStorage')
local userInterface = require(RS.user_interface)

local player = game:GetService('Players').LocalPlayer
local playerGui = player:WaitForChild('PlayerGui')

userInterface.new(playerGui)