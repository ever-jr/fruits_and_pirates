local rs = game:GetService('ReplicatedStorage')
local inputEvent = game:GetService('UserInputService')

local event = rs.events.on_key_pressed.event

inputEvent.InputBegan:Connect(function(input, _)
    local keys = { 'Q', 'E', 'R', 'F' }

    local valid_key = function(): string?
        for _, key in pairs(keys) do
            if input.KeyCode.Name == key then
                return key
            end
        end

        return nil
    end

    local key = valid_key()
    if key then
        event:FireServer(key)
    end
end)
