local M = {}

M.map_to_list = function(map: {}): {}
    local list = {}
    for _, v in pairs(map) do
        table.insert(list, v)
    end
    return list
end

return M
