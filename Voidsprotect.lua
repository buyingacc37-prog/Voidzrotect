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
