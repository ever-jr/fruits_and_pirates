--!strict

type Fruit = {
    name: string,
    onAttack: () -> (),
}

local fireFruit: Fruit = {
    name = 'FireFruit',
    onAttack = function()
    end,
}

local stoneFruit: Fruit = {
    name = 'StoneFruit',
    onAttack = function()
    end,
}

return {
    [fireFruit.name] = fireFruit,
    [stoneFruit.name] = stoneFruit,
}