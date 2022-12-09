local tool = workspace:FindFirstChild("Axe")
local handle = tool:FindFirstChild("Handle")
local Players = game.Players
local player = Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local Inventory = require(rs.InventoryManager)
tool:SetAttribute("Collected", false)

local function PickUp()
	if not tool:GetAttribute("Collected") then
		Inventory.PickUpItem(player, tool, Inventory.getFirstSlot(player.PlayerGui.GameUi.Inventory:GetChildren()), player.PlayerGui.GameUi.Inventory, Inventory)
	end
end

tool.Equipped:Connect(PickUp)
