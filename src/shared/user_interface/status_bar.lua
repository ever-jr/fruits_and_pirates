local M = {}

--- Background name
local bgName = 'StatusBar'

--- Healthbar name
local hbName = 'HealthBar'

M.new = function(a: { maxHealth: number, parent: Instance }): Frame
    -- local size = nil

    --- TODO: fix, small af
    local background = Instance.new('Frame')
    background.Name = bgName
    background.AutomaticSize = Enum.AutomaticSize.X

    local healthBar = Instance.new('Frame', background)
    healthBar.Name = hbName
    healthBar.Size = background.Size
    healthBar.BackgroundColor3 = Color3.fromHex('#a20050')

    background.Parent = a.parent
end

M.changeHealth = function()
    -- ...
end


return M