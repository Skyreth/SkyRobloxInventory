local tool = workspace:FindFirstChild("Axe")
local handle = tool:FindFirstChild("Handle")
local Players = game.Players
local player = Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local Inventory = require(rs.InventoryManager)

local function PickUp()
	Inventory.PickUpItem(player, tool, Inventory.getFirstSlot(player.PlayerGui.GameUi.Inventory:GetChildren()), player.PlayerGui.GameUi.Inventory, Inventory)
end

tool.Equipped:Connect(PickUp)
