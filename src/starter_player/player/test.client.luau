local rs = game:GetService('ReplicatedStorage')
local inputEvent = game:GetService('UserInputService')
local userInterface = require(rs.user_interface)
local events = rs.events

local interfaces = rs.user_interface.interfaces
local onPlayerDamaged = events.on_player_damaged.event
local onSaveEvent = rs.events.on_save

-- player related
local player = game:GetService('Players').LocalPlayer

local playerGui = player.PlayerGui

local save = require(interfaces.save)
userInterface.new(
    {
        name = "SaveGui",
        player_gui = playerGui,
    },
    save.new(function()
        onSaveEvent.event:FireServer()
    end)
)

-- events
inputEvent.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.T then
		local damage = 10
		onPlayerDamaged:FireServer(damage)
	end
end)
