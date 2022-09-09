-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local tt = Instance.new("TextLabel")
local tt2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "gabsufaeyjkgasdbyghasdbjkyabuegaukdbs"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.409090906, 0, 0.318016917, 0)
Frame.Size = UDim2.new(0, 300, 0, 100)

tt.Name = "tt"
tt.Parent = Frame
tt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tt.BackgroundTransparency = 1.000
tt.Size = UDim2.new(0, 300, 0, 30)
tt.Font = Enum.Font.Cartoon
tt.Text = "Try To Die Script"
tt.TextColor3 = Color3.fromRGB(255, 255, 255)
tt.TextSize = 20.000

tt2.Name = "tt2"
tt2.Parent = Frame
tt2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tt2.BackgroundTransparency = 1.000
tt2.Position = UDim2.new(0, 0, 0.699999988, 0)
tt2.Size = UDim2.new(0, 300, 0, 30)
tt2.Font = Enum.Font.Cartoon
tt2.Text = "Press H to Die"
tt2.TextColor3 = Color3.fromRGB(255, 255, 255)
tt2.TextSize = 20.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
TextButton.Position = UDim2.new(0.166666672, 0, 0.349999994, 0)
TextButton.Size = UDim2.new(0, 200, 0, 30)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Close"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000

UICorner.Parent = TextButton

UICorner_2.Parent = Frame

-- Scripts:

local function AYWX_fake_script() -- Frame.sm 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(AYWX_fake_script)()
local function UCHSR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Text = "3"
		wait(1)
		script.Parent.Text = "2"
		wait(1)
		script.Parent.Text = "1"
		wait(1)
		script.Parent.Parent.Parent.Frame.Visible = false
	end)
end
coroutine.wrap(UCHSR_fake_script)()
local function VDYXAE_fake_script() -- Frame.Engine 
	local script = Instance.new('LocalScript', Frame)

	local mouse = game.Players.LocalPlayer:GetMouse()
	
	mouse.KeyDown:Connect(function(key)
		if key == "h" then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		end
	end)
end
coroutine.wrap(VDYXAE_fake_script)()
