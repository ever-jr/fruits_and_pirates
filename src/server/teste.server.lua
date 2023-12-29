local RS = game:GetService('ReplicatedStorage')
local e = require(RS.elements)

local events = RS.events 
local onPlayerHit: RemoteEvent = events.on_player_hit

for i, element: e.Element in pairs(e) do
    print(i, element.name, element.description)
end

onPlayerHit.OnServerEvent:Connect(function(player, damage: number)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild('Humanoid')
    print(`player {player.Name} took {damage} of dmg`)
    humanoid:TakeDamage(damage)

    -- display ui
    onPlayerHit:FireClient(player, damage)
end)