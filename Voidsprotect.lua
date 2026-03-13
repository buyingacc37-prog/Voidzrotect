local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local UIS = game:GetService("UserInputService")

local ScreenGui1 = Instance.new("ScreenGui")
ScreenGui1.Name = "KdmlExecutorMobile"
ScreenGui1.Enabled = true
ScreenGui1.Parent = PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "ExecutorFrame"
MainFrame.Visible = true
MainFrame.ZIndex = 1
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 280, 0, 300)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Active = true
MainFrame.Parent = ScreenGui1

local Corner1 = Instance.new("UICorner")
Corner1.CornerRadius = UDim.new(0, 12)
Corner1.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Visible = true
TitleBar.ZIndex = 2
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.Size = UDim2.new(1, 0, 0, 36)
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TitleBar.BackgroundTransparency = 0
TitleBar.BorderSizePixel = 0
TitleBar.ClipsDescendants = false
TitleBar.Active = false
TitleBar.Parent = MainFrame

local Corner2 = Instance.new("UICorner")
Corner2.CornerRadius = UDim.new(0, 12)
Corner2.Parent = TitleBar

local BottomFill = Instance.new("Frame")
BottomFill.Size = UDim2.new(1, 0, 0, 12)
BottomFill.Position = UDim2.new(0, 0, 1, -12)
BottomFill.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
BottomFill.BorderSizePixel = 0
BottomFill.ZIndex = 1
BottomFill.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleText"
TitleLabel.Visible = true
TitleLabel.ZIndex = 3
TitleLabel.Position = UDim2.new(0, 10, 0, 0)
TitleLabel.Size = UDim2.new(1, -80, 0.6, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "âš¡ saturday âš¡"
TitleLabel.TextColor3 = Color3.fromRGB(240, 230, 255)
TitleLabel.TextSize = 14
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.TextYAlignment = Enum.TextYAlignment.Center
TitleLabel.Parent = TitleBar

local PingLabel = Instance.new("TextLabel")
PingLabel.Name = "PingLabel"
PingLabel.Visible = true
PingLabel.ZIndex = 3
PingLabel.Position = UDim2.new(0, 10, 0.6, 0)
PingLabel.Size = UDim2.new(1, -80, 0.4, 0)
PingLabel.BackgroundTransparency = 1
PingLabel.Text = "PING STATUS: SAFE (25 ms)"
PingLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
PingLabel.TextSize = 8
PingLabel.Font = Enum.Font.GothamBold
PingLabel.TextXAlignment = Enum.TextXAlignment.Left
PingLabel.TextYAlignment = Enum.TextYAlignment.Center
PingLabel.Parent = TitleBar

local CloseBtn = Instance.new("TextButton")
CloseBtn.Name = "CloseBtn"
CloseBtn.Visible = true
CloseBtn.ZIndex = 3
CloseBtn.Position = UDim2.new(1, -32, 0.5, -14)
CloseBtn.Size = UDim2.new(0, 28, 0, 28)
CloseBtn.BackgroundColor3 = Color3.fromRGB(240, 70, 90)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.AutoButtonColor = true
CloseBtn.Parent = TitleBar

local Corner3 = Instance.new("UICorner")
Corner3.CornerRadius = UDim.new(0, 10)
Corner3.Parent = CloseBtn

local MinBtn = Instance.new("TextButton")
MinBtn.Name = "MinBtn"
MinBtn.Visible = true
MinBtn.ZIndex = 3
MinBtn.Position = UDim2.new(1, -64, 0.5, -14)
MinBtn.Size = UDim2.new(0, 28, 0, 28)
MinBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 240)
MinBtn.Text = "_"
MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinBtn.TextSize = 16
MinBtn.Font = Enum.Font.GothamBold
MinBtn.AutoButtonColor = true
MinBtn.Parent = TitleBar

local Corner4 = Instance.new("UICorner")
Corner4.CornerRadius = UDim.new(0, 10)
Corner4.Parent = MinBtn

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Name = "ScrollingFrame"
ScrollFrame.Visible = true
ScrollFrame.ZIndex = 1
ScrollFrame.Position = UDim2.new(0, 8, 0, 44)
ScrollFrame.Size = UDim2.new(1, -16, 1, -100)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ClipsDescendants = true
ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollFrame.ScrollBarThickness = 5
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
ScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollFrame.Parent = MainFrame

local ListLayout = Instance.new("UIListLayout")
ListLayout.Padding = UDim.new(0, 6)
ListLayout.FillDirection = Enum.FillDirection.Vertical
ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ListLayout.Parent = ScrollFrame

local TopPadding = Instance.new("UIPadding")
TopPadding.PaddingTop = UDim.new(0, 4)
TopPadding.Parent = ScrollFrame

local StatusBar = Instance.new("Frame")
StatusBar.Name = "StatusBar"
StatusBar.ZIndex = 2
StatusBar.AnchorPoint = Vector2.new(0, 1)
StatusBar.Position = UDim2.new(0, 8, 1, -8)
StatusBar.Size = UDim2.new(1, -16, 0, 44)
StatusBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
StatusBar.BackgroundTransparency = 0
StatusBar.BorderSizePixel = 1
StatusBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
StatusBar.Parent = MainFrame

local Corner5 = Instance.new("UICorner")
Corner5.CornerRadius = UDim.new(0, 10)
Corner5.Parent = StatusBar

local StatusText = Instance.new("TextLabel")
StatusText.Position = UDim2.new(0, 4, 0, 4)
StatusText.Size = UDim2.new(1, -8, 1, -8)
StatusText.BackgroundTransparency = 1
StatusText.Text = "Status: Idle"
StatusText.TextColor3 = Color3.fromRGB(200, 200, 255)
StatusText.TextSize = 11
StatusText.Font = Enum.Font.Gotham
StatusText.TextWrapped = true
StatusText.TextXAlignment = Enum.TextXAlignment.Left
StatusText.TextYAlignment = Enum.TextYAlignment.Top
StatusText.Parent = StatusBar

local function makeToggleRow(labelText, strokeColor, order, state)
	local Row = Instance.new("Frame")
	Row.Name = "Row_" .. tostring(order)
	Row.LayoutOrder = order
	Row.Size = UDim2.new(1, -4, 0, 40)
	Row.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Row.BackgroundTransparency = 0
	Row.BorderSizePixel = 0
	Row.Parent = ScrollFrame

	local RC = Instance.new("UICorner")
	RC.CornerRadius = UDim.new(0, 10)
	RC.Parent = Row

	local RS = Instance.new("UIStroke")
	RS.Color = strokeColor
	RS.Thickness = 1.2
	RS.Transparency = 0.4
	RS.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	RS.LineJoinMode = Enum.LineJoinMode.Round
	RS.Enabled = true
	RS.Parent = Row

	local Lbl = Instance.new("TextLabel")
	Lbl.Position = UDim2.new(0, 10, 0, 0)
	Lbl.Size = UDim2.new(0.65, 0, 1, 0)
	Lbl.BackgroundTransparency = 1
	Lbl.Text = labelText
	Lbl.TextColor3 = Color3.fromRGB(240, 230, 255)
	Lbl.TextSize = 12
	Lbl.Font = Enum.Font.GothamBold
	Lbl.TextXAlignment = Enum.TextXAlignment.Left
	Lbl.TextYAlignment = Enum.TextYAlignment.Center
	Lbl.Parent = Row

	local Track = Instance.new("Frame")
	Track.Position = UDim2.new(0.8, 0, 0.5, -10)
	Track.Size = UDim2.new(0, 40, 0, 20)
	Track.BackgroundColor3 = Color3.fromRGB(45, 40, 65)
	Track.BorderSizePixel = 0
	Track.Parent = Row

	local TC = Instance.new("UICorner")
	TC.CornerRadius = UDim.new(1, 0)
	TC.Parent = Track

	local Dot = Instance.new("Frame")
	Dot.Position = state and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1)
	Dot.Size = UDim2.new(0, 18, 0, 18)
	Dot.BackgroundColor3 = strokeColor
	Dot.BorderSizePixel = 0
	Dot.Parent = Track

	local DC = Instance.new("UICorner")
	DC.CornerRadius = UDim.new(1, 0)
	DC.Parent = Dot

	local on = state
	Track.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
		   input.UserInputType == Enum.UserInputType.Touch then
			on = not on
			Dot.Position = on and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1)
			Dot.BackgroundColor3 = on and strokeColor or Color3.fromRGB(100, 100, 120)
		end
	end)

	return Row
end

makeToggleRow("SPAM IF STEALING (KICK)",    Color3.fromRGB(255, 0, 0),   0, false)
makeToggleRow("SPAM IF STEALING (NO KICK)", Color3.fromRGB(0, 255, 0),   1, true)
makeToggleRow("ANTI-TP SCAM (RECOMMENDED)", Color3.fromRGB(255, 170, 0), 2, false)
makeToggleRow("TP PROTECTOR",               Color3.fromRGB(0, 255, 255), 3, true)

local PlayerRow = Instance.new("Frame")
PlayerRow.Name = "Row_4"
PlayerRow.LayoutOrder = 4
PlayerRow.Size = UDim2.new(1, -4, 0, 60)
PlayerRow.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlayerRow.BackgroundTransparency = 0
PlayerRow.BorderSizePixel = 0
PlayerRow.Parent = ScrollFrame

local Corner6 = Instance.new("UICorner")
Corner6.CornerRadius = UDim.new(0, 10)
Corner6.Parent = PlayerRow

local Avatar = Instance.new("ImageLabel")
Avatar.Position = UDim2.new(0, 8, 0, 10)
Avatar.Size = UDim2.new(0, 40, 0, 40)
Avatar.BackgroundTransparency = 1
Avatar.Image = "rbxthumb://type=AvatarHeadShot&id=9979111194&w=150&h=150"
Avatar.ImageColor3 = Color3.fromRGB(255, 255, 255)
Avatar.Parent = PlayerRow

local Corner7 = Instance.new("UICorner")
Corner7.CornerRadius = UDim.new(1, 0)
Corner7.Parent = Avatar

local NameLabel = Instance.new("TextLabel")
NameLabel.Position = UDim2.new(0, 55, 0, 8)
NameLabel.Size = UDim2.new(1, -130, 0, 20)
NameLabel.BackgroundTransparency = 1
NameLabel.Text = "Pavel123"
NameLabel.TextColor3 = Color3.fromRGB(235, 225, 255)
NameLabel.TextSize = 12
NameLabel.Font = Enum.Font.GothamBold
NameLabel.TextXAlignment = Enum.TextXAlignment.Left
NameLabel.TextYAlignment = Enum.TextYAlignment.Center
NameLabel.Parent = PlayerRow

local RoleLabel = Instance.new("TextLabel")
RoleLabel.Position = UDim2.new(0, 55, 0, 28)
RoleLabel.Size = UDim2.new(1, -130, 0, 16)
RoleLabel.BackgroundTransparency = 1
RoleLabel.Text = "Player"
RoleLabel.TextColor3 = Color3.fromRGB(160, 150, 200)
RoleLabel.TextSize = 10
RoleLabel.Font = Enum.Font.Gotham
RoleLabel.TextXAlignment = Enum.TextXAlignment.Left
RoleLabel.Parent = PlayerRow

local SpamBtn = Instance.new("TextButton")
SpamBtn.Position = UDim2.new(1, -70, 0.5, -11)
SpamBtn.Size = UDim2.new(0, 60, 0, 22)
SpamBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SpamBtn.Text = "âš¡SPAMâš¡"
SpamBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SpamBtn.TextSize = 12
SpamBtn.Font = Enum.Font.GothamBold
SpamBtn.AutoButtonColor = true
SpamBtn.Parent = PlayerRow

local Corner8 = Instance.new("UICorner")
Corner8.CornerRadius = UDim.new(0, 8)
Corner8.Parent = SpamBtn

CloseBtn.MouseButton1Click:Connect(function()
	ScreenGui1.Enabled = false
end)

local minimized = false
MinBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	ScrollFrame.Visible = not minimized
	StatusBar.Visible = not minimized
	MainFrame.Size = minimized and UDim2.new(0, 280, 0, 36) or UDim2.new(0, 280, 0, 300)
end)

do
	local dragging, dragStart, frameStart = false, nil, nil
	TitleBar.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or
		   i.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = i.Position
			frameStart = MainFrame.Position
		end
	end)
	TitleBar.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or
		   i.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
	UIS.InputChanged:Connect(function(i)
		if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or
		                 i.UserInputType == Enum.UserInputType.Touch) then
			local delta = i.Position - dragStart
			MainFrame.Position = UDim2.new(
				frameStart.X.Scale, frameStart.X.Offset + delta.X,
				frameStart.Y.Scale, frameStart.Y.Offset + delta.Y)
		end
	end)
end

local ScreenGui2 = Instance.new("ScreenGui")
ScreenGui2.Name = "ModernDashboard"
ScreenGui2.Enabled = true
ScreenGui2.Parent = PlayerGui

local DashFrame = Instance.new("Frame")
DashFrame.Name = "DashFrame"
DashFrame.AnchorPoint = Vector2.new(0.5, 0)
DashFrame.Position = UDim2.new(0.5, 0, 0, 106)
DashFrame.Size = UDim2.new(0, 280, 0, 100)
DashFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
DashFrame.BackgroundTransparency = 0.05
DashFrame.BorderSizePixel = 0
DashFrame.ClipsDescendants = true
DashFrame.Active = true
DashFrame.Parent = ScreenGui2

local Corner9 = Instance.new("UICorner")
Corner9.CornerRadius = UDim.new(0, 16)
Corner9.Parent = DashFrame

local DashStroke = Instance.new("UIStroke")
DashStroke.Color = Color3.fromRGB(255, 255, 255)
DashStroke.Thickness = 2
DashStroke.Transparency = 0.1
DashStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
DashStroke.LineJoinMode = Enum.LineJoinMode.Round
DashStroke.Parent = DashFrame

local TopSection = Instance.new("Frame")
TopSection.Position = UDim2.new(0, 0, 0, 0)
TopSection.Size = UDim2.new(1, 0, 0.4, 0)
TopSection.BackgroundTransparency = 1
TopSection.Parent = DashFrame

local ShieldIcon = Instance.new("TextLabel")
ShieldIcon.Position = UDim2.new(0.05, 0, 0.5, -15)
ShieldIcon.Size = UDim2.new(0, 30, 0, 30)
ShieldIcon.BackgroundTransparency = 1
ShieldIcon.Text = "ðŸ›¡ï¸"
ShieldIcon.TextSize = 17
ShieldIcon.Font = Enum.Font.GothamBlack
ShieldIcon.TextXAlignment = Enum.TextXAlignment.Center
ShieldIcon.TextYAlignment = Enum.TextYAlignment.Center
ShieldIcon.Parent = TopSection

local HubTitle = Instance.new("TextLabel")
HubTitle.Position = UDim2.new(0.15, 0, 0, 0)
HubTitle.Size = UDim2.new(0.7, 0, 1, 0)
HubTitle.BackgroundTransparency = 1
HubTitle.Text = "CHIRAQ HUB"
HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HubTitle.TextSize = 17
HubTitle.Font = Enum.Font.GothamBold
HubTitle.TextXAlignment = Enum.TextXAlignment.Left
HubTitle.TextYAlignment = Enum.TextYAlignment.Center
HubTitle.Parent = TopSection

local StatusDot = Instance.new("Frame")
StatusDot.Position = UDim2.new(0.9, -5, 0.5, -5)
StatusDot.Size = UDim2.new(0, 10, 0, 10)
StatusDot.BackgroundColor3 = Color3.fromRGB(76, 175, 80)
StatusDot.BackgroundTransparency = 0
StatusDot.BorderSizePixel = 0
StatusDot.Parent = TopSection

local Corner10 = Instance.new("UICorner")
Corner10.CornerRadius = UDim.new(1, 0)
Corner10.Parent = StatusDot

local BottomSection = Instance.new("Frame")
BottomSection.Position = UDim2.new(0, 0, 0.4, 0)
BottomSection.Size = UDim2.new(1, 0, 0.6, 0)
BottomSection.BackgroundTransparency = 1
BottomSection.Parent = DashFrame

local DiscordLink = Instance.new("TextLabel")
DiscordLink.Position = UDim2.new(0.05, 0, 0, 0)
DiscordLink.Size = UDim2.new(0.9, 0, 1, 0)
DiscordLink.BackgroundTransparency = 1
DiscordLink.Text = "discord.gg/chiraqhub"
DiscordLink.TextColor3 = Color3.fromRGB(200, 200, 220)
DiscordLink.TextSize = 14
DiscordLink.Font = Enum.Font.GothamMedium
DiscordLink.TextXAlignment = Enum.TextXAlignment.Left
DiscordLink.TextYAlignment = Enum.TextYAlignment.Center
DiscordLink.Parent = BottomSection

do
	local dragging, dragStart, frameStart = false, nil, nil
	DashFrame.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or
		   i.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = i.Position
			frameStart = DashFrame.Position
		end
	end)
	DashFrame.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or
		   i.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
	UIS.InputChanged:Connect(function(i)
		if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or
		                 i.UserInputType == Enum.UserInputType.Touch) then
			local delta = i.Position - dragStart
			DashFrame.Position = UDim2.new(
				frameStart.X.Scale, frameStart.X.Offset + delta.X,
				frameStart.Y.Scale, frameStart.Y.Offset + delta.Y)
		end
	end)
end
local rs = game:GetService("ReplicatedStorage")
local plrs = game:GetService("Players")
local run = game:GetService("RunService")

local lp         = plrs.LocalPlayer
local ws         = game:GetService("Workspace")
local repsto     = game:GetService("ReplicatedStorage")
local stats      = game:GetService("Stats")
local uis        = game:GetService("UserInputService")
local plrgui     = lp:WaitForChild("PlayerGui")

_G.dumpedandremakedbysaturday = {
	Mode                 = "None",
	BorderKick           = false,
	MyPlot               = nil,
	StealHitbox          = nil,
	CarpetSpammedPlayers = {},
	AdminRemote          = nil,
	LastPunishTime       = {},
	TpProtector          = false,
	PlayerPositions      = {},
	TpProtectorCooldowns = {},
}

local core = _G.dumpedandremakedbysaturday

local function fireAdmin(...)
	if not core.AdminRemote then return end
	local a = {...}
	task.spawn(function()
		core.AdminRemote:InvokeServer(unpack(a))
	end)
end

local CARPET_ITEMS = {["Flying Carpet"] = true, ["Witch's Broom"] = true, ["Santa's Sleigh"] = true}

function punishPlayer(p)
	if not core.AdminRemote then return end
	if not p or p == lp then return end
	local char = p.Character
	if not char then return end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	local uid = p.UserId
	if core.LastPunishTime[uid] and tick() - core.LastPunishTime[uid] < 2 then return end
	core.LastPunishTime[uid] = tick()
	hrp.CFrame = CFrame.new(0, 10000, 0)

	if core.Mode == "Kick" then
		fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "balloon")
		task.delay(0.3, function() lp:Kick("thorium get raped by saturday my nigga") end)
	elseif core.Mode == "NoKick" then
		fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "balloon")
		fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "ragdoll")
	end
end

local function findPlayerInHitbox()
	local hitbox = core.StealHitbox
	if not hitbox then return end
	local cf   = hitbox.CFrame
	local size = hitbox.Size
	local hx, hz = size.X * 0.5, size.Z * 0.5
	for _, p in ipairs(plrs:GetPlayers()) do
		if p ~= lp then
			local char = p.Character
			if char then
				local hrp = char:FindFirstChild("HumanoidRootPart")
				if hrp then
					local rel = cf:PointToObjectSpace(hrp.Position)
					if math.abs(rel.X) <= hx and math.abs(rel.Z) <= hz then
						for _, item in ipairs(char:GetChildren()) do
							if CARPET_ITEMS[item.Name] then
								punishPlayer(p)
								break
							end
						end
					end
				end
			end
		end
	end
end

task.spawn(function()
	if not lp.Character then lp.CharacterAdded:Wait() end
	task.wait(1)

	local net      = repsto:WaitForChild("Packages"):WaitForChild("Net")
	local children = net:GetChildren()
	local byIdx    = {}
	local byName   = {}
	for i, obj in ipairs(children) do
		byIdx[i]          = obj
		byName[obj.Name]  = i
	end

	local anchorIdx = byName["RF/a0e78691-cb9b-4efc-ac08-9c06fea70059"]
	if anchorIdx then
		local actual = byIdx[anchorIdx + 1]
		if actual then
			core.AdminRemote = actual
		end
	end

	for _, obj in ipairs(repsto:GetDescendants()) do
		if obj:IsA("RemoteEvent") then
			obj.OnClientEvent:Connect(function(...)
				if core.Mode == "None" or not core.AdminRemote or not core.MyPlot then return end
				for _, a in ipairs({...}) do
					if type(a) == "string" and a:lower():find("stealing") then
						local myHRP = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
						if not myHRP then return end
						local best, bestDist = nil, math.huge
						for _, p in ipairs(plrs:GetPlayers()) do
							if p ~= lp then
								local char = p.Character
								if char then
									local hrp = char:FindFirstChild("HumanoidRootPart")
									if hrp then
										local dist = (hrp.Position - myHRP.Position).Magnitude
										if dist < bestDist then bestDist = dist best = p end
									end
								end
							end
						end
						if best then punishPlayer(best) end
						return
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	if hookfunction and fireproximityprompt then
		local old = fireproximityprompt
		hookfunction(fireproximityprompt, newcclosure(function(prompt, ...)
			if core.Mode ~= "None" then
				local at = (prompt.ActionText or ""):lower()
				local ot = (prompt.ObjectText  or ""):lower()
				if at:find("steal") or ot:find("steal") then
					local part = prompt.Parent
					if part and part:IsA("BasePart") then
						local pos = part.Position
						local best, bestD = nil, math.huge
						for _, p in ipairs(plrs:GetPlayers()) do
							if p ~= lp then
								local char = p.Character
								if char then
									local hrp = char:FindFirstChild("HumanoidRootPart")
									if hrp then
										local d = (hrp.Position - pos).Magnitude
										if d < bestD then bestD = d best = p end
									end
								end
							end
						end
						if best and bestD < 20 then punishPlayer(best) end
					end
					findPlayerInHitbox()
				end
			end
			return old(prompt, ...)
		end))
	end
	if hookfunction and newcclosure then
		local oldFS = Instance.FireServer
		hookfunction(Instance.FireServer, newcclosure(function(self, ...)
			if core.Mode ~= "None" and core.StealHitbox then
				findPlayerInHitbox()
			end
			return oldFS(self, ...)
		end))
	end
end)

local pingLbl = nil

task.spawn(function()
	while task.wait(0.5) do
		local plots = ws:FindFirstChild("Plots")
		if plots and not core.MyPlot then
			for _, p in ipairs(plots:GetChildren()) do
				local sign = p:FindFirstChild("PlotSign")
				if sign then
					local lbl = sign:FindFirstChild("TextLabel", true)
					if lbl then
						local t = lbl.Text:lower()
						if t:find(lp.Name:lower()) or t:find(lp.DisplayName:lower()) then
							core.MyPlot      = p
							core.StealHitbox = p:FindFirstChild("StealHitbox", true)
							break
						end
					end
				end
			end
		end

		if pingLbl then
			local ping = math.floor(stats.Network.ServerStatsItem["Data Ping"]:GetValue())
			local safe = ping <= 150
			pingLbl.Text       = "PING STATUS: " .. (safe and "SAFE" or "HIGH") .. " (" .. ping .. " ms)"
			pingLbl.TextColor3 = safe and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,80,80)
		end
	end
end)

run.Heartbeat:Connect(function()
	if core.BorderKick and core.StealHitbox and core.AdminRemote then
		local cf, size = core.StealHitbox.CFrame, core.StealHitbox.Size
		local hx, hz = size.X * 0.5, size.Z * 0.5
		for _, p in ipairs(plrs:GetPlayers()) do
			if p ~= lp then
				local char = p.Character
				if char then
					local hrp = char:FindFirstChild("HumanoidRootPart")
					if hrp then
						local rel = cf:PointToObjectSpace(hrp.Position)
						if math.abs(rel.X) <= hx and math.abs(rel.Z) <= hz then
							for _, item in ipairs(char:GetChildren()) do
								if CARPET_ITEMS[item.Name] then
									local uid = p.UserId
									if not core.CarpetSpammedPlayers[uid] then
										core.CarpetSpammedPlayers[uid] = true
										fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "balloon")
										fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "jumpscare")
										fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "rocket")
										fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "jail")
										task.delay(5, function() core.CarpetSpammedPlayers[uid] = nil end)
									end
									break
								end
							end
						end
					end
				end
			end
		end
	end

	if core.TpProtector and core.AdminRemote then
		for _, p in ipairs(plrs:GetPlayers()) do
			if p ~= lp then
				local char = p.Character
				if char then
					local hrp = char:FindFirstChild("HumanoidRootPart")
					if hrp then
						local cur = hrp.Position
						local uid = p.UserId
						local last = core.PlayerPositions[uid]
						if last and (cur - last).Magnitude > 7 then
							for _, item in ipairs(char:GetChildren()) do
								if CARPET_ITEMS[item.Name] then
									if not core.TpProtectorCooldowns[uid] or tick() - core.TpProtectorCooldowns[uid] > 3 then
										core.TpProtectorCooldowns[uid] = tick()
										fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "balloon")
										fireAdmin("f888ee6e-c86d-46e1-93d7-0639d6635d42", p, "jail")
									end
									break
								end
							end
						end
						core.PlayerPositions[uid] = cur
					end
				end
			end
		end
	end
end)

local sg = Instance.new("ScreenGui")
sg.Name = "KdmlExecutorMobile"
sg.Enabled = true
sg.Parent = plrgui

local frame = Instance.new("Frame")
frame.Name = "ExecutorFrame"
frame.Visible = true
frame.ZIndex = 1
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 280, 0, 300)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Active = true
frame.Parent = sg
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

local titlebar = Instance.new("Frame")
titlebar.Name = "TitleBar"
titlebar.ZIndex = 2
titlebar.Size = UDim2.new(1, 0, 0, 36)
titlebar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
titlebar.BorderSizePixel = 0
titlebar.Parent = frame
Instance.new("UICorner", titlebar).CornerRadius = UDim.new(0, 12)

local bfill = Instance.new("Frame")
bfill.Size = UDim2.new(1, 0, 0, 12)
bfill.Position = UDim2.new(0, 0, 1, -12)
bfill.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
bfill.BorderSizePixel = 0
bfill.ZIndex = 1
bfill.Parent = titlebar

local titlelbl = Instance.new("TextLabel")
titlelbl.ZIndex = 3
titlelbl.Position = UDim2.new(0, 10, 0, 0)
titlelbl.Size = UDim2.new(1, -80, 0.6, 0)
titlelbl.BackgroundTransparency = 1
titlelbl.Text = "âš¡ owned by saturday g âš¡"
titlelbl.TextColor3 = Color3.fromRGB(240, 230, 255)
titlelbl.TextSize = 14
titlelbl.Font = Enum.Font.GothamBold
titlelbl.TextXAlignment = Enum.TextXAlignment.Left
titlelbl.Parent = titlebar

local pinglbl = Instance.new("TextLabel")
pinglbl.ZIndex = 3
pinglbl.Position = UDim2.new(0, 10, 0.6, 0)
pinglbl.Size = UDim2.new(1, -80, 0.4, 0)
pinglbl.BackgroundTransparency = 1
pinglbl.Text = "PING STATUS: SAFE (25 ms)"
pinglbl.TextColor3 = Color3.fromRGB(0, 255, 0)
pinglbl.TextSize = 8
pinglbl.Font = Enum.Font.GothamBold
pinglbl.TextXAlignment = Enum.TextXAlignment.Left
pinglbl.Parent = titlebar
pingLbl = pinglbl

local closebtn = Instance.new("TextButton")
closebtn.ZIndex = 3
closebtn.Position = UDim2.new(1, -32, 0.5, -14)
closebtn.Size = UDim2.new(0, 28, 0, 28)
closebtn.BackgroundColor3 = Color3.fromRGB(240, 70, 90)
closebtn.Text = "X"
closebtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closebtn.TextSize = 14
closebtn.Font = Enum.Font.GothamBold
closebtn.Parent = titlebar
Instance.new("UICorner", closebtn).CornerRadius = UDim.new(0, 10)

local minbtn = Instance.new("TextButton")
minbtn.ZIndex = 3
minbtn.Position = UDim2.new(1, -64, 0.5, -14)
minbtn.Size = UDim2.new(0, 28, 0, 28)
minbtn.BackgroundColor3 = Color3.fromRGB(70, 130, 240)
minbtn.Text = "_"
minbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minbtn.TextSize = 16
minbtn.Font = Enum.Font.GothamBold
minbtn.Parent = titlebar
Instance.new("UICorner", minbtn).CornerRadius = UDim.new(0, 10)

local scroll = Instance.new("ScrollingFrame")
scroll.Position = UDim2.new(0, 8, 0, 44)
scroll.Size = UDim2.new(1, -16, 1, -100)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ClipsDescendants = true
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.ScrollBarThickness = 5
scroll.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
scroll.ScrollingDirection = Enum.ScrollingDirection.Y
scroll.Parent = frame

local listlay = Instance.new("UIListLayout")
listlay.Padding = UDim.new(0, 6)
listlay.HorizontalAlignment = Enum.HorizontalAlignment.Center
listlay.SortOrder = Enum.SortOrder.LayoutOrder
listlay.Parent = scroll

Instance.new("UIPadding", scroll).PaddingTop = UDim.new(0, 4)

local statbar = Instance.new("Frame")
statbar.ZIndex = 2
statbar.AnchorPoint = Vector2.new(0, 1)
statbar.Position = UDim2.new(0, 8, 1, -8)
statbar.Size = UDim2.new(1, -16, 0, 44)
statbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
statbar.BorderSizePixel = 1
statbar.BorderColor3 = Color3.fromRGB(27, 42, 53)
statbar.Parent = frame
Instance.new("UICorner", statbar).CornerRadius = UDim.new(0, 10)

local statlbl = Instance.new("TextLabel")
statlbl.Position = UDim2.new(0, 4, 0, 4)
statlbl.Size = UDim2.new(1, -8, 1, -8)
statlbl.BackgroundTransparency = 1
statlbl.Text = "DISCORD.GG/CHIRAQHUB"
statlbl.TextColor3 = Color3.fromRGB(200, 200, 255)
statlbl.TextSize = 11
statlbl.Font = Enum.Font.Gotham
statlbl.TextWrapped = true
statlbl.TextXAlignment = Enum.TextXAlignment.Left
statlbl.TextYAlignment = Enum.TextYAlignment.Top
statlbl.Parent = statbar

local tstates = { Kick = false, NoKick = false, Protector = false, TpProtector = false }
local tdots   = {}
local tcolors = {}

local function setVisual(key, state)
	local d = tdots[key]
	local c = tcolors[key]
	if d and c then
		d.Position         = state and UDim2.new(1, -19, 0, 1) or UDim2.new(0, 1, 0, 1)
		d.BackgroundColor3 = state and c or Color3.fromRGB(100, 100, 120)
	end
end

local function makeToggleRow(labelText, strokeColor, order, toggleKey)
	local row = Instance.new("Frame")
	row.LayoutOrder = order
	row.Size = UDim2.new(1, -4, 0, 40)
	row.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	row.BorderSizePixel = 0
	row.Parent = scroll
	Instance.new("UICorner", row).CornerRadius = UDim.new(0, 10)

	local stroke = Instance.new("UIStroke")
	stroke.Color = strokeColor
	stroke.Thickness = 1.2
	stroke.Transparency = 0.4
	stroke.Parent = row

	local lbl = Instance.new("TextLabel")
	lbl.Position = UDim2.new(0, 10, 0, 0)
	lbl.Size = UDim2.new(0.65, 0, 1, 0)
	lbl.BackgroundTransparency = 1
	lbl.Text = labelText
	lbl.TextColor3 = Color3.fromRGB(240, 230, 255)
	lbl.TextSize = 12
	lbl.Font = Enum.Font.GothamBold
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.Parent = row

	local track = Instance.new("TextButton")
	track.Position = UDim2.new(0.8, 0, 0.5, -10)
	track.Size = UDim2.new(0, 40, 0, 20)
	track.BackgroundColor3 = Color3.fromRGB(45, 40, 65)
	track.BorderSizePixel = 0
	track.Text = ""
	track.AutoButtonColor = false
	track.Parent = row
	Instance.new("UICorner", track).CornerRadius = UDim.new(1, 0)

	local dot = Instance.new("Frame")
	dot.Position = UDim2.new(0, 1, 0, 1)
	dot.Size = UDim2.new(0, 18, 0, 18)
	dot.BackgroundColor3 = Color3.fromRGB(100, 100, 120)
	dot.BorderSizePixel = 0
	dot.Parent = track
	Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

	tdots[toggleKey]   = dot
	tcolors[toggleKey] = strokeColor

	local db = false
	track.MouseButton1Click:Connect(function()
		if db then return end
		db = true

		local on = not tstates[toggleKey]
		tstates[toggleKey] = on

		if toggleKey == "Kick" then
			if on then core.Mode = "Kick" tstates["NoKick"] = false setVisual("NoKick", false)
			else core.Mode = "None" end
		elseif toggleKey == "NoKick" then
			if on then core.Mode = "NoKick" tstates["Kick"] = false setVisual("Kick", false)
			else core.Mode = "None" end
		elseif toggleKey == "Protector" then
			core.BorderKick = on
		elseif toggleKey == "TpProtector" then
			core.TpProtector = on
		end

		setVisual(toggleKey, on)
		task.delay(0.2, function() db = false end)
	end)
end

makeToggleRow("SPAM IF STEALING (KICK)",    Color3.fromRGB(255, 0, 0),   0, "Kick")
makeToggleRow("SPAM IF STEALING (NO KICK)", Color3.fromRGB(0, 255, 0),   1, "NoKick")
makeToggleRow("ANTI-TP SCAM (RECOMMENDED)", Color3.fromRGB(255, 170, 0), 2, "Protector")
makeToggleRow("TP PROTECTOR",               Color3.fromRGB(0, 255, 255), 3, "TpProtector")

closebtn.MouseButton1Click:Connect(function() sg.Enabled = false end)

local minimized = false
minbtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	scroll.Visible = not minimized
	statbar.Visible = not minimized
	frame.Size = minimized and UDim2.new(0, 280, 0, 36) or UDim2.new(0, 280, 0, 300)
end)

do
	local dragging, dragStart, frameStart = false, nil, nil
	titlebar.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			dragging = true dragStart = i.Position frameStart = frame.Position
		end
	end)
	titlebar.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = false end
	end)
	uis.InputChanged:Connect(function(i)
		if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
			local delta = i.Position - dragStart
			frame.Position = UDim2.new(frameStart.X.Scale, frameStart.X.Offset + delta.X, frameStart.Y.Scale, frameStart.Y.Offset + delta.Y)
		end
	end)
end

local sg2 = Instance.new("ScreenGui")
sg2.Name = "ModernDashboard"
sg2.Enabled = true
sg2.Parent = plrgui

local dashframe = Instance.new("Frame")
dashframe.AnchorPoint = Vector2.new(0.5, 0)
dashframe.Position = UDim2.new(0.5, 0, 0, 106)
dashframe.Size = UDim2.new(0, 280, 0, 100)
dashframe.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
dashframe.BackgroundTransparency = 0.05
dashframe.BorderSizePixel = 0
dashframe.ClipsDescendants = true
dashframe.Active = true
dashframe.Parent = sg2
Instance.new("UICorner", dashframe).CornerRadius = UDim.new(0, 16)

local dashstroke = Instance.new("UIStroke")
dashstroke.Color = Color3.fromRGB(255, 255, 255)
dashstroke.Thickness = 2
dashstroke.Transparency = 0.1
dashstroke.Parent = dashframe

local topsec = Instance.new("Frame")
topsec.Size = UDim2.new(1, 0, 0.4, 0)
topsec.BackgroundTransparency = 1
topsec.Parent = dashframe

local shieldico = Instance.new("TextLabel")
shieldico.Position = UDim2.new(0.05, 0, 0.5, -15)
shieldico.Size = UDim2.new(0, 30, 0, 30)
shieldico.BackgroundTransparency = 1
shieldico.Text = "ðŸ›¡ï¸"
shieldico.TextSize = 17
shieldico.Font = Enum.Font.GothamBlack
shieldico.Parent = topsec

local hubtitle = Instance.new("TextLabel")
hubtitle.Position = UDim2.new(0.15, 0, 0, 0)
hubtitle.Size = UDim2.new(0.7, 0, 1, 0)
hubtitle.BackgroundTransparency = 1
hubtitle.Text = "DISCORD.GG/CHIRAQHUB"
hubtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
hubtitle.TextSize = 17
hubtitle.Font = Enum.Font.GothamBold
hubtitle.TextXAlignment = Enum.TextXAlignment.Left
hubtitle.Parent = topsec

local statusdot = Instance.new("Frame")
statusdot.Position = UDim2.new(0.9, -5, 0.5, -5)
statusdot.Size = UDim2.new(0, 10, 0, 10)
statusdot.BackgroundColor3 = Color3.fromRGB(76, 175, 80)
statusdot.BorderSizePixel = 0
statusdot.Parent = topsec
Instance.new("UICorner", statusdot).CornerRadius = UDim.new(1, 0)

local botsec = Instance.new("Frame")
botsec.Position = UDim2.new(0, 0, 0.4, 0)
botsec.Size = UDim2.new(1, 0, 0.6, 0)
botsec.BackgroundTransparency = 1
botsec.Parent = dashframe

local disclbl = Instance.new("TextLabel")
disclbl.Position = UDim2.new(0.05, 0, 0, 0)
disclbl.Size = UDim2.new(0.9, 0, 1, 0)
disclbl.BackgroundTransparency = 1
disclbl.Text = "If you want it taken down go ahead and remove all the outdated exposes on banned admins from your server and stop mentioning me in your shitty server greg thats all im asking for and ill remove the script from here if you dont wanna comply then ill just leak the source code here"
disclbl.TextColor3 = Color3.fromRGB(200, 200, 220)
disclbl.TextSize = 14
disclbl.Font = Enum.Font.GothamMedium
disclbl.TextXAlignment = Enum.TextXAlignment.Left
disclbl.TextWrapped = true
disclbl.Parent = botsec

do
	local dragging, dragStart, frameStart = false, nil, nil
	dashframe.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			dragging = true dragStart = i.Position frameStart = dashframe.Position
		end
	end)
	dashframe.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = false end
	end)
	uis.InputChanged:Connect(function(i)
		if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.User
