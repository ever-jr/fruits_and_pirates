local M = {}

M.new = function(onTap: (InputObject, number) -> ())
  local f = Instance.new("Frame")
  f.Name = "Save"
  f.Size = UDim2.fromOffset(60, 40)
  f.Position = UDim2.fromScale(.5, 0)
  f.AnchorPoint = Vector2.new(0, 1)

  local button = Instance.new("TextButton", f)
  button.Name = "SaveData"
  button.Text = "Save"
  button.TextScaled = true
  button.AutomaticSize = Enum.AutomaticSize.XY
  button.Activated:Connect(onTap)

  return f
end

return M