local UIS = game:GetService("UserInputService")
local RS = game:GetService("ReplicatedStorage")

local keys = require(RS.keys)
local event = RS.events.on_key_pressed

local to_list = function(t: {})
    local list = {}
    for _, v in pairs(t) do
        table.insert(list, v)
    end
    return list
end
local listed_keys = to_list(keys)


UIS.InputBegan:Connect(function(input: InputObject, _: boolean)
    local key = input.KeyCode.Name
    local input_exist = table.find(listed_keys, key)
    if input_exist == nil then return end
    print(key)
    event:FireServer(key)
end)
