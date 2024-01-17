local rs = game:GetService('ReplicatedStorage')
local input_event = game:GetService('UserInputService')

local key_pressed_event = require(rs.key_pressed_event)

inputEvent.InputBegan:Connect(function(input, _)
    local keys = { 'Q', 'E', 'R', 'F' }

    local valid_key = function()
        for _, key in pairs(keys) do
            if input.KeyCode.Name == key then
                return key
            end
        end
        return nil
    end

    local key = valid_key()
    if key then
        key_pressed_event:FireServer(key)
    end
end)
