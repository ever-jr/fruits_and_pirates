local M = {}

local script_name = script.weapon_script.Name

M.findScript = function(instance: Instance): boolean
    if instance:FindFirstChild(script_name) == nil then
        return false
    else
        return true
    end
end

M.addScript = function(tool: Tool)
    local new_script = script.weapon_script:Clone()
    new_script.Parent = tool
end

return M
