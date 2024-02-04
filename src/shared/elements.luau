export type Element = {
    name: string,
    description: string,
}

local fire: Element = { name = 'Fire', description = 'It burns.' }
local poison: Element = { name = 'Poison', description = 'It poison you.' }

return { fire, poison }