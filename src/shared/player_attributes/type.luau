local M = {}

export type Attribute =
"Fruit" |
"Strength" |
"Dexterity" |
"Constitution" |
"Mind"

export type PlayerAttributes = {
    level: number,
    fruit: string,

    strength: number,
    dexterity: number,
    constitution: number,
    mind: number,
}

M.attributeNames = {
    level = "Level",
    fruit = "Fruit",
    strength = "Strength",
    dexterity = "Dexterity",
    constitution = "Constitution",
    mind = "Mind",
}

return M
