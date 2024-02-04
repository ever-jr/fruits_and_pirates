--!strict
local M = {}

-- local variables
local uiName = 'UserInterface'

M.new = function(a: { playerGui: PlayerGui, interfaceBuilder: () -> Frame })
	local ui = Instance.new('ScreenGui')
	ui.Name = uiName

	local interface = a.interfaceBuilder()
	interface.Parent = ui

	ui.Parent = a.playerGui
end

M.load = function(playerGui: PlayerGui): ScreenGui
	local ui = playerGui:FindFirstChild(uiName) :: ScreenGui
	return ui
end

return M