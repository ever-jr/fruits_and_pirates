local M = {}

-- modules
local statusBar = require(script.status_bar)

-- local variables
local uiName = 'UserInterface'

M.new = function(player: Player)
	local playerGui = player.PlayerGui
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character.Humanoid

	local ui = Instance.new('ScreenGui')
	ui.Name = uiName

	statusBar.new({
		humanoid = humanoid,
		parent = ui,
		onHealthChanged = humanoid.HealthChanged,
	})

	ui.Parent = playerGui
end

M.load = function(playerGui: PlayerGui): ScreenGui
	local ui = playerGui:FindFirstChild(uiName)
	return ui
end

return M
