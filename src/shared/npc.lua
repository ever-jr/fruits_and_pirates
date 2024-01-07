--!strict
local npc = {}
local rs = game:GetService('ReplicatedStorage')
local hp = require(rs.humanoid_parts_names)


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
        name = hp.head,
        size = Vector3.one,
    })

    -- UpperTorso
    local upperTorsoHeight = 1.6
    nPart({
        name = hp.upperTorso,
        size = Vector3.new(1.5, upperTorsoHeight, 1),
    })

    -- LowerTorso
    local lowerTorsoHeight = .4
    nPart({
        name = hp.lowerTorso,
        size = Vector3.new(1.5, lowerTorsoHeight, 1),
    })

    -- HumanoidRootPart
    local rootHeight = upperTorsoHeight + lowerTorsoHeight
    nPart({
        name = hp.root,
        size = Vector3.new(1.5, rootHeight, 1),
    })

    local createArmOrLeg = function(name: string)
        nPart({
            name = name,
            size = Vector3.new(.75, 1, 1)
        })
    end
    
    createArmOrLeg(hp.rightUpperArm)
    createArmOrLeg(hp.rightLowerArm)
    createArmOrLeg(hp.rightUpperLeg)
    createArmOrLeg(hp.rightLowerLeg)

    createArmOrLeg(hp.leftUpperArm)
    createArmOrLeg(hp.leftLowerArm)
    createArmOrLeg(hp.leftUpperLeg)
    createArmOrLeg(hp.leftLowerLeg)

    local createHandOrFoot = function(name: string)
        nPart({
            name = name,
            size = Vector3.new(.75, .3, 1),
        })
    end

    createHandOrFoot(hp.rightHand)
    createHandOrFoot(hp.rightHand)

    createHandOrFoot(hp.leftFoot)
    createHandOrFoot(hp.leftFoot)

    model.Parent = parent
end

return npc