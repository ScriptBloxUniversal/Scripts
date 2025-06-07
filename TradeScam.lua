-- Booting the library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

-- Creating a window with intro text
local Window = OrionLib:MakeWindow({
	Name = "Trade Scam Script",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "TradeScamConfig",
	IntroEnabled = true,
	IntroText = "Loading...",
	IntroIcon = "rbxassetid://4483345998"
})

-- Creating the main tab
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Creating the READ tab
local ReadTab = Window:MakeTab({
	Name = "READ❗️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Creating the EXTRA tab
local ExtraTab = Window:MakeTab({
	Name = "EXTRA",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Adding information to the READ tab
ReadTab:AddLabel("❗️NOT WORKING IN PRIVATE SERVERS❗️")
ReadTab:AddLabel("❗️If u execute many times that crash you❗️")
ReadTab:AddLabel("❗️WORKING WITH ANY KNIFE OR GUN❗️")

-- Adding Player ESP to the EXTRA tab
ExtraTab:AddToggle({
	Name = "Player ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			-- Enable ESP logic here
			spawn(function()
				while true do
					for _, player in ipairs(game.Players:GetPlayers()) do
						if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
							local billboardGui = Instance.new("BillboardGui")
							billboardGui.Size = UDim2.new(1, 0, 1, 0)
							billboardGui.StudsOffset = Vector3.new(0, 3, 0)
							billboardGui.AlwaysOnTop = true
							billboardGui.Parent = player.Character.HumanoidRootPart

							local textLabel = Instance.new("TextLabel")
							textLabel.Size = UDim2.new(1, 0, 1, 0)
							textLabel.BackgroundTransparency = 1
							textLabel.TextColor3 = Color3.new(1, 0, 0)
							textLabel.TextScaled = true
							textLabel.Text = player.Name
							textLabel.Parent = billboardGui
						end
					end
					wait(1)
				end
			end)
		else
			-- Disable ESP logic here
			for _, player in ipairs(game.Players:GetPlayers()) do
				if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
					local billboardGui = player.Character.HumanoidRootPart:FindFirstChildOfClass("BillboardGui")
					if billboardGui then
						billboardGui:Destroy()
					end
				end
			end
		end
	end
})

-- Function to get player names
local function getPlayerNames()
	local players = {}
	for _, player in ipairs(game.Players:GetPlayers()) do
		table.insert(players, player.Name)
	end
	return players
end

-- Dropdown for selecting the victim
local victimDropdown = MainTab:AddDropdown({
	Name = "Username Victim",
	Default = "Select a player",
	Options = getPlayerNames(),
	Callback = function(Value)
		print("SelectedPlayerVictim: " .. Value)
		OrionLib:MakeNotification({
			Name = "Target Found",
			Content = "Username Victim: " .. Value,
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

-- Toggle to start the trade scam
local tradeScamToggle = MainTab:AddToggle({
	Name = "Start Trade Scam",
	Default = false,
	Callback = function(Value)
		if Value then
			-- Logic for starting the trade scam
			local selectedPlayer = victimDropdown.Value
			if selectedPlayer then
				local player = game.Players:FindFirstChild(selectedPlayer)
				if player then
					local function startTradeScam()
						-- Initiate trade with the selected player
						local tradeGui = player:WaitForChild("PlayerGui"):WaitForChild("TradeGui")
						tradeGui.TradeButton:Click()
						wait(0.5)
						-- Accept the trade
						tradeGui.AcceptButton:Click()
					end
					startTradeScam()
				end
			end
		end
	end
})

-- Button to freeze the trade
MainTab:AddButton({
	Name = "Freeze Trade",
	Callback = function()
		print("Player Freezed")
		OrionLib:MakeNotification({
			Name = "Freeze Trade Activated",
			Content = "Remove your items of the trade",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		-- Logic to freeze the trade
		local selectedPlayer = victimDropdown.Value
		if selectedPlayer then
			local player = game.Players:FindFirstChild(selectedPlayer)
			if player then
				local tradeGui = player:WaitForChild("PlayerGui"):WaitForChild("TradeGui")
				for _, item in ipairs(tradeGui.Items:GetChildren()) do
					item:Destroy()
				end
				-- Simulate freezing by removing items from the trade panel
				local function simulateFreeze()
					wait(0.5)
					for _, item in ipairs(tradeGui.Items:GetChildren()) do
						item:Destroy()
					end
				end
				spawn(simulateFreeze)
			end
		end
	end
})

-- Button to force accept the trade
MainTab:AddButton({
	Name = "Force Accept",
	Callback = function()
		print("Force Accepted")
		OrionLib:MakeNotification({
			Name = "Force Accept Activated",
			Content = "JUST ACCEPT TRADE",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		-- Logic to force accept the trade
		local selectedPlayer = victimDropdown.Value
		if selectedPlayer then
			local player = game.Players:FindFirstChild(selectedPlayer)
			if player then
				local tradeGui = player:WaitForChild("PlayerGui"):WaitForChild("TradeGui")
				tradeGui.AcceptButton:Click()
				-- Simulate force accept by clicking the accept button
				local function simulateForceAccept()
					wait(0.5)
					tradeGui.AcceptButton:Click()
				end
				spawn(simulateForceAccept)
			end
		end
	end
})

-- Making the window draggable
Window:SelectTab(MainTab)
Window:SelectTab(ReadTab)
Window:SelectTab(ExtraTab)

-- Function to update player list
local function updatePlayerList()
	local players = getPlayerNames()
	victimDropdown:UpdateOptions(players)
end

game.Players.PlayerAdded:Connect(updatePlayerList)
game.Players.PlayerRemoving:Connect(updatePlayerList)

-- Initial update to set the correct player list
updatePlayerList()
