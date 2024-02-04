--!strict
local npc = {}
local rs = game:GetService('ReplicatedStorage')
local body = require(rs.body_parts)


npc.new = function(parent: Instance)
    local model = Instance.new('Model')
    model.Name = 'Npc'

    Instance.new('Humanoid', model)

    local nPart = function(a: { name: string, size: Vector3 }): ()
        local part = Instance.new('Part')
        part.Name = a.name
        part.Size = a.size
        part.Parent = model
    end

    -- Head
    nPart({
        name = body.head,
        size = Vector3.one,
    })

    -- UpperTorso
    local upperTorsoHeight = 1.6
    nPart({
        name = body.upperTorso,
        size = Vector3.new(1.5, upperTorsoHeight, 1),
    })

    -- LowerTorso
    local lowerTorsoHeight = .4
    nPart({
        name = body.lowerTorso,
        size = Vector3.new(1.5, lowerTorsoHeight, 1),
    })

    -- HumanoidRootPart
    local rootHeight = upperTorsoHeight + lowerTorsoHeight
    nPart({
        name = body.root,
        size = Vector3.new(1.5, rootHeight, 1),
    })

    local createArmOrLeg = function(name: string)
        nPart({
            name = name,
            size = Vector3.new(.75, 1, 1)
        })
    end
    
    createArmOrLeg(body.rightUpperArm)
    createArmOrLeg(body.rightLowerArm)
    createArmOrLeg(body.rightUpperLeg)
    createArmOrLeg(body.rightLowerLeg)

    createArmOrLeg(body.leftUpperArm)
    createArmOrLeg(body.leftLowerArm)
    createArmOrLeg(body.leftUpperLeg)
    createArmOrLeg(body.leftLowerLeg)

    local createHandOrFoot = function(name: string)
        nPart({
            name = name,
            size = Vector3.new(.75, .3, 1),
        })
    end

    createHandOrFoot(body.rightHand)
    createHandOrFoot(body.rightHand)

    createHandOrFoot(body.leftFoot)
    createHandOrFoot(body.leftFoot)

    model.Parent = parent
end

return npc