local eventHandler = {}

eventHandler.onServer = function(player, damage)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid:TakeDamage(damage)
end

return eventHandler