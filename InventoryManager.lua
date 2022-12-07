local inv = {}

function inv.PickUpItem(player, tool, slot, inv, invm)
	if slot ~= nil then
		invm.SetSelectorPos(player, inv, invm, slot:GetAttribute("Id"), false)
		slot:SetAttribute("Amount", slot:GetAttribute("Amount")+1)
		slot:SetAttribute("Item", tool.ToolTip)
		slot.Image = tool.TextureId
	end
end

function inv.SetSelectorPos(player, inv, invm, id, update)
	local cslot = invm.getCurrentSlot(inv)
	local sel = cslot:FindFirstChild("Selector")
	local nslot = invm.getSlotById(id, inv:GetChildren())
	
	if update then 
		local itname = nslot:GetAttribute("Item")
		local oitname = cslot:GetAttribute("Item")
		
		if oitname ~= "vide" then 
			local item = player.Character:FindFirstChild(oitname)
			item.Parent = player.Backpack
		end
		
		if itname ~= "vide" then
			local item = player.Backpack:FindFirstChild(itname)
			item.Parent = player.Character
		end
	end 
	
	sel.Position = nslot.Position
	sel.Parent = nslot
	inv:SetAttribute("SlotPos", id)
	
end

function inv.getCurrentSlot(inventory)
	local id = inventory:GetAttribute("SlotPos")
	local inv = inventory:GetChildren()
	
	for i = 1, #inv do
		if inv[i]:GetAttribute("Id") == id then return inv[i] end
	end
end

function inv.getSlotById(id, inv)
	for i = 1, #inv do
		if inv[i]:GetAttribute("Id") == id then return inv[i] end
	end
end

function inv.getFirstSlot(inv)
	for i = 1, #inv do
		if inv[i]:GetAttribute("Item") == "vide" then return inv[i] end
	end
end

return inv
