--- Data Store Manager
local dsm = {}

local dss = game:GetService("DataStoreService")
local name = "PlayerData"

dsm.getDataStore = function(scope: string): DataStore
   return dss:GetDataStore(name, scope)
end

return dsm