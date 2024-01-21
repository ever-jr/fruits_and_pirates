local M = {}

-- modules
local statusBar = require(script.status_bar)

-- local variables
local uiName = 'UserInterface'

M.new = function(a: { humanoid: Humanoid, playerGui: PlayerGui})
	local ui = Instance.new('ScreenGui')
	ui.Name = uiName

	statusBar.new({
		humanoid = a.humanoid,
		parent = ui,
	})

	ui.Parent = a.playerGui
end

M.load = function(playerGui: PlayerGui): ScreenGui
	local ui = playerGui:FindFirstChild(uiName)
	return ui
end

return M
