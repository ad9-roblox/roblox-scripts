
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()


local X = Material.Load({
	Title = "Press H to Die too",
	Style = 3,
	SizeX = 250,
	SizeY = 80,
	Theme = "Dark",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})

local Y = X.New({
	Title = "el goblino"
})

local A = Y.Button({
	Text = "Die",
	Callback = function()
		print("hello")
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "ehm yes"
			})
		end
	}
})

local Mouse = game.Players.LocalPlayer:GetMouse()

Mouse.KeyDown:Connect(function(key)
	if key == "h" then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end)
