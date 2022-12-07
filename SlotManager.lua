local inv = script.Parent
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

mouse.WheelBackward:Connect(onWheelBackward)
mouse.WheelForward:Connect(onWheelForwad)
