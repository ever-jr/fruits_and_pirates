local M = {}

type build_interface = {
    name: string,
    player_gui: PlayerGui,
}

M.new = function(interface: build_interface, ...: Frame)
	local ui = Instance.new('ScreenGui')
	ui.Name = interface.name

    for _, f in pairs({...}) do
        f.Parent = ui
    end

	ui.Parent = interface.player_gui
end

return M
