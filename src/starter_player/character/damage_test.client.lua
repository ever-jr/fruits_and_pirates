local rs = game:GetService('ReplicatedStorage')
local inputEvent = game:GetService('UserInputService')
local player = game:GetService('Players').LocalPlayer
local events = rs.events

local onPlayerHit = events.on_player_hit

inputEvent.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        local damage = 10
        onPlayerHit:FireServer(damage)
    end
end)