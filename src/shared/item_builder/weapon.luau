local M = {}

type weapon_type = "dagger" | "sword"

type weapon = {
    name: string,
    type: weapon_type?,
    damage: number?,
}

type pos = "top" | "bottom"
local height_diff = function(part: Part, pos: pos): number
    local diff = part.Size.Y/2
    if pos == "top" then
        return -diff
    else
        return diff
    end
end

function M.create(weapon: weapon): Tool
    local tool = Instance.new("Tool")
    tool.Name = weapon.name

    local blade = Instance.new("Part", tool)
    blade.Name = "Blade"
    blade.Size = Vector3.new(.2, 1.5, .4)
    blade.CanCollide = false
    blade.Color = Color3.fromHex("#c2c2c2")

    local cross_guard = Instance.new("Part", tool)
    cross_guard.Name = "CrossGuard"
    cross_guard.Size = Vector3.new(.4, .2, .6)
    cross_guard.CanCollide = false
    cross_guard.Color = Color3.fromHex("#522103")

    local handle = Instance.new("Part", tool)
    handle.Name = "Handle"
    handle.Size = Vector3.new(.2, 1, .2)
    handle.Color = Color3.fromHex("#734a1f")

    local blade_weld = Instance.new("Weld", blade)
    blade_weld.Part0 = blade
    blade_weld.Part1 = cross_guard
    blade_weld.C0 = CFrame.new(0, height_diff(blade, "top"), 0)
    blade_weld.C1 = CFrame.new(0, height_diff(cross_guard, "bottom"), 0)

    local cross_guard_weld = Instance.new("Weld", cross_guard)
    cross_guard_weld.Part0 = cross_guard
    cross_guard_weld.Part1 = handle
    cross_guard_weld.C0 = CFrame.new(0, height_diff(cross_guard, "top"), 0)
    cross_guard_weld.C1 = CFrame.new(0, height_diff(handle, "bottom"), 0)

    return tool
end

return M
