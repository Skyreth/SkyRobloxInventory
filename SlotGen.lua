local img = Instance.new("ImageLabel")
img.Name = "Slot"
img.Parent = script.Parent
img.ImageTransparency = 0
Instance.new("UICorner").Parent = img
img:SetAttribute("Amount", 0)
img:SetAttribute("Item", "vide")
img.Image = "rbxassetid://744322096"
img:SetAttribute("Id", 1)

for i = 2, 9 do 
	local copy = img:Clone()
	copy.Parent = script.Parent
	copy:SetAttribute("Id", i)
end

local sel = Instance.new("ImageLabel")
sel.Parent = img
sel.BackgroundColor = BrickColor.Gray()
sel.Name = "Selector"
sel.BorderColor = BrickColor.Black()
sel.BorderSizePixel = 4
sel.BackgroundTransparency = 0.7
sel.Size = UDim2.fromOffset(40,40)
sel.Position = img.Position
