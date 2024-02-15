local RS = game:GetService("ReplicatedStorage")

local events = RS.events

local on_tool = events.on_tool
local OnToolEvent = on_tool.event
local OnToolHandler = require(on_tool.handler)

local tool_handler = function(player: Player, tool: Tool)
    OnToolHandler.addScript(tool)
end

OnToolEvent.OnServerEvent:Connect(tool_handler)
