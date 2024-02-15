local TOOL: Tool = script.Parent

local character: Model?

TOOL.DescendantAdded:Connect(function(desc: Instance)
    print(desc)
end)
