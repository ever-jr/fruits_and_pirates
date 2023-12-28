local M = {}

-- modules
local statusBar = require(script.status_bar)

-- local variables
local uiName = 'UserInterface'

M.new = function(playerGui: PlayerGui)
    local ui = Instance.new('ScreenGui')
    ui.Name = uiName

    statusBar.new({
        maxHealth = 100,
        parent = ui,
    })

    ui.Parent = playerGui
end

M.load = function(playerGui: PlayerGui): ScreenGui
    local ui = playerGui:FindFirstChild(uiName)
    return ui
end

return M