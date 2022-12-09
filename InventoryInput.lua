local inv = script.Parent
local UIS = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local rs = game:GetService("ReplicatedStorage")
local invm = require(rs.InventoryManager)
local slt = 1
local alt = -1

local function onWheelBackward() 
	local cpos = inv:GetAttribute("SlotPos")
	if cpos ~= 1 then invm.SetSelectorPos(player, inv, invm, cpos-1, true) end
end

local function onWheelForwad()
	local cpos = inv:GetAttribute("SlotPos")

	if cpos ~= 9 then invm.SetSelectorPos(player, inv, invm, cpos+1, true) end
end

local function onInputBegan(input, GPE)
	if input.KeyCode == Enum.KeyCode.One then invm.SetSelectorPos(player, inv, invm, 1, true)
	elseif input.KeyCode == Enum.KeyCode.Two then invm.SetSelectorPos(player, inv, invm, 2, true) 
	elseif input.KeyCode == Enum.KeyCode.Three then invm.SetSelectorPos(player, inv, invm, 3, true) 
	elseif input.KeyCode == Enum.KeyCode.Four then invm.SetSelectorPos(player, inv, invm, 4, true) 
	elseif input.KeyCode == Enum.KeyCode.Five then invm.SetSelectorPos(player, inv, invm, 5, true) 
	elseif input.KeyCode == Enum.KeyCode.Six then invm.SetSelectorPos(player, inv, invm, 6, true) 
	elseif input.KeyCode == Enum.KeyCode.Seven then invm.SetSelectorPos(player, inv, invm, 7, true) 
	elseif input.KeyCode == Enum.KeyCode.Eight then invm.SetSelectorPos(player, inv, invm, 8, true) 
	elseif input.KeyCode == Enum.KeyCode.Nine then invm.SetSelectorPos(player, inv, invm, 9, true) end
end

UIS.InputBegan:Connect(onInputBegan)
mouse.WheelBackward:Connect(onWheelBackward)
mouse.WheelForward:Connect(onWheelForwad)
