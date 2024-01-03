local M = {}

--- Background name
local bgName = 'StatusBar'

--- Healthbar name
local hbName = 'HealthBar'

local setBackgroundBorder = function(frame: Frame) end

M.new = function(a: { humanoid: Humanoid, parent: Instance, onHealthChanged: RBXScriptSignal })
	local background = Instance.new('Frame')
	background.Name = bgName
	background.Size = UDim2.new(0.3, 0, 0, 50)
	background.BackgroundColor3 = Color3.fromHex('#440022')
	-- padding
	background.Position = UDim2.fromOffset(10, 0)
	-- set border
	background.BorderMode = Enum.BorderMode.Inset
	background.BorderSizePixel = 2

	local healthBar = Instance.new('Frame', background)
	healthBar.Name = hbName
	healthBar.Size = UDim2.fromScale(1, 1)
	healthBar.BackgroundColor3 = Color3.fromHex('#a20050')

	-- when player get hit
	a.onHealthChanged:Connect(function(health)
		local maxHealth = a.humanoid.MaxHealth

		healthBar.Size = UDim2.fromScale(health / maxHealth, 1)
	end)

	-- put in ScreenGui
	background.Parent = a.parent
end

M.changeHealth = function()
	-- ...
end

return M
