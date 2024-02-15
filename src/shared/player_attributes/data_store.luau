--!strict

local RS = game:GetService("ReplicatedStorage")
local ds = require(RS.data_store)
local T = require(RS.player_attributes.type)

local vault = ds.getDataStore("Attributes")

local dataStore = {}

dataStore.load = function(userId: string): T.PlayerAttributes
    -- Try to get user saved data
    local success, data = pcall(function(): T.PlayerAttributes?
        local data = vault:GetAsync(userId)
        return data
    end)

    print("success:", success)
    if success and data ~= nil then
        print("data restored:", data)
        return data
    else
        warn("no data found")
        return {
            level = 1,
            fruit = "",
            strength = 0,
            dexterity = 0,
            constitution = 0,
            mind = 0,
        }
    end
end

dataStore.save = function(userId: string, data: T.PlayerAttributes): string?
    warn("saving...")
    local success, errorMessage = pcall(function()
        vault:SetAsync(userId, data)
        print("saved!")
    end)

    if success then
        return nil
    else 
        return errorMessage
    end
end

return dataStore
