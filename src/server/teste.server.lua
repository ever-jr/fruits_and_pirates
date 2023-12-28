local RS = game:GetService('ReplicatedStorage')
local e = require(RS.elements)

for i, element: e.Element in pairs(e) do
    print(i, element.name, element.description)
end