OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ore Smelting Tycoon | 4/7/2022", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = false})

function sent_message(title, text)
    OrionLib:MakeNotification({
	Name = title,
	Content = text,
	Image = "rbxassetid://4483345998",
	Time = 5
})

end

local Tab = Window:MakeTab({
	Name = "Tab",
	Icon = false,
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Music",
    Icon = false,
    PremiumOnly = false
})

local Tab3 = Window:MakeTab({
    Name = "Sky",
    Icon = false,
    PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Not Patched",
	Content = "You will not get banned by this gui.",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Section = Tab:AddSection({
	Name = "Map"
})

Tab:AddDropdown({
	Name = "Delete Tycoon | Select",
	Default = "Amethyst",
	Options = {"Amethyst", "Bronze", "Diamond", "Gold", "Ruby", "Sapphire", "Silver", "Emerald"},
	Callback = function(Value)
		_G.tycd = Value
	end    
})

Tab:AddButton({ 
    Name = "Delete | Delete Selected Tycoon",
    Callback = function()
    game.Workspace.Tycoons[_G.tycd]:Destroy()
    sent_message("Tycoon Delete", "Gone!")
    end
})

Tab:AddButton({
	Name = "Delete Parts | Obby Hard | Obby Easy",
	Callback = function()
      		for _,v in pairs(game.Workspace.EasyObby:GetChildren()) do  
    if v.Name == "Kill" then
        v:Destroy()
    end
end
for _,v2 in pairs(game.Workspace.HardObby:GetChildren()) do  
    if v2.Name == "Kill" then
        v2:Destroy()
    end
end
    sent_message("Parts", "No More Death!")
  	end    
})
Tab:AddButton({
    Name = "Destroy Walls | Need Tycoon Select | Dont Lel",
    Callback = function()
        itemz = game.Workspace.Tycoons[_G.tyc].Machine
        for _,xd in pairs(itemz:GetChildren()) do   
            if xd.Name == "Wall" then
                xd:Destroy()
            end
        end
        sent_message("why", "well you must find ores now lol")
    end

})

Tab:AddButton({
    Name = "Destroy Walls (Borders) | Need Tycoon Select",
    Callback = function()
        tgn = game.Workspace.Tycoons[_G.tyc].Border:Destroy()
    sent_message("No More Save", "yep")
    end
})
Tab:AddButton({
    Name = "Bigger Drops | Need Tycoon Select",
    Callback = function()
        items = game.Workspace.Tycoons[_G.tyc].Drops
        for _,v in pairs(items:GetChildren()) do    
            if v:IsA("Part") then
                v.Size = Vector3.new(1.5,1.5,1.5)
            end
        end
    sent_message("Bigger?", "balls? :flushed:")
    end
})

local Section = Tab:AddSection({
    Name = "Buttons | New Section"
})

Tab:AddButton({
    Name = "Dex Explorer | Make this ui work",
    Callback = function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
    sent_message("This Version", "this ver dont had script view, cuz roblox patched it")
end
})

Tab:AddButton({
    Name = "Admin | Script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    sent_message("latest release", "latest release of this gui")
    end
})
Tab:AddButton({
    Name = "Print Btools | Help",
    Callback = function()
        print("Unrestricted BTools By: OpenGamerTips")
        print("KeyBinds: Press P for Btools")
        print("KeyBinds: Press L to Unlock Workspace")
        print("KeyBinds: Press K to Enable Core Elements")
end
})

Tab:AddButton({
    Name = "Load Btools | Main",
    Callback = function()
        sent_message("btls", "runnin")
        local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
 
mouse.KeyDown:connect(function(key)
    key = string.lower(key)
 
	if key == "p" then
		for item = 1, 4 do
			HopperBin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
			HopperBin.BinType = item
		end
	elseif key == "l" then
		function UnlockWorkspace(a)
			for n,part in pairs(a:GetChildren()) do
				if(part:IsA("BasePart")) then 
					part.Locked = false 
				end
				UnlockWorkspace(part)
			end
		end
		UnlockWorkspace(workspace)
	elseif key == "k" then
		local StarterGui = game:GetService("StarterGui")
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
	end
end)
    end
})

Tab:AddButton({
    Name = "Clear Inventory",
    Callback = function()
        for _,mk5 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if mk5:IsA("Tool") then
                mk5:Destroy()
            end
        end
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
})

Tab:AddToggle({
	Name = "Boosts Menu | UI",
	Default = false,
	Callback = function(Value)
		game.Players.LocalPlayer.PlayerGui.GameGui.Boosts.Visible = Value
	end    
})


Tab:AddToggle({
	Name = "Rebirth | UI",
	Default = false,
	Callback = function(Value)
		game.Players.LocalPlayer.PlayerGui.GameGui.RebirthUpgradesFrame.Visible = Value
	end    
})

Tab:AddToggle({
	Name = "Codes | UI",
	Default = false,
	Callback = function(Value)
		game.Players.LocalPlayer.PlayerGui.GameGui.CodesFrame.Visible = Value
	end    
})

Tab:AddToggle({
	Name = "Inventory | UI",
	Default = false,
	Callback = function(Value)
		game.Players.LocalPlayer.PlayerGui.GameGui.Inventory.Visible = Value
	end    
})

Tab:AddToggle({
	Name = "Shop | UI",
	Default = false,
	Callback = function(Value)
		game.Players.LocalPlayer.PlayerGui.GameGui.ShopFrame.Visible = Value
	end    
})

Tab:AddButton({
    Name = "Delete Watermark | UI",
    Callback = function()
        game.Players.LocalPlayer.PlayerGui.GameGui.Friend:Destroy()
game.Players.LocalPlayer.PlayerGui.GameGui.Group:Destroy()
    sent_message("info", "this makes spam in developer console")
end
})

local Section = Tab:AddSection({
	Name = "Tycoons | Player"
})

Tab:AddDropdown({
	Name = "Select Tycoon | Selected",
	Default = "Amethyst",
	Options = {"Amethyst", "Bronze", "Diamond", "Gold", "Ruby", "Sapphire", "Silver", "Emerald"},
	Callback = function(Value)
        sent_message("New Tycoon", "Current Selected: "..Value)
		_G.tyc = Value
	end    
})

Tab:AddButton({
    Name = "No Gamepass Pads | Need Select Tycoon",
    Callback = function()
    sent_message("Pads", "No more PayToWin Buttons")
        if _G.tyc == "Amethyst" then
for _,vn1 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn1:IsA("Model") then
            vn1:Destroy()
        end
    end
        end
if _G.tyc == "Bronze" then
    for _,vn in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn:IsA("Model") then
            vn:Destroy()
        end
    end
        end
if _G.tyc == "Diamond" then
for _,vn3 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn3:IsA("Model") then
            vn3:Destroy()
        end
    end
        end
if _G.tyc == "Gold" then
for _,vn4 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn4:IsA("Model") then
            vn4:Destroy()
        end
    end
        end
if _G.tyc == "Ruby" then
for _,vn5 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn5:IsA("Model") then
            vn5:Destroy()
        end
    end
        end
if _G.tyc == "Sapphire" then
for _,vn6 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn6:IsA("Model") then
            vn6:Destroy()
        end
    end
        end
if _G.tyc == "Silver" then
for _,vn7 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do 
        if vn7:IsA("Model") then
            vn7:Destroy()
        end
    end
        end
if _G.tyc == "Emerald" then
    for _,vn8 in pairs(game.Workspace.Tycoons[_G.tyc].RobuxButtons:GetChildren()) do
        if vn8:IsA("Model") then
            vn8:Destroy()
        end
        
    end
    end
    end

})
Tab:AddBind({
    Name = "Move Easy Obby End | To Player",
    Default = Enum.KeyCode.O,
    Hold = false,
    Callback = function()
item2 = game.Workspace.HardObby.Reward
item2.Size = Vector3.new(3,3,3)
item2.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    sent_message("Reward!", "part from Easy Obby (2,2,2)")
end


})


Tab:AddBind({
	Name = "Move Hard Obby End | To Player",
	Default = Enum.KeyCode.L,
	Hold = false,
	Callback = function()
		item1 = game.Workspace.HardObby.Reward
item1.Size = Vector3.new(3,3,3)
        item1.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	sent_message("Reward!", "part from Hard Obby (2,2,2)")
end    
})

Tab:AddBind({
    Name = "Set After Zoom Teleport | Need Tycoon Select",
    Default = Enum.KeyCode.R,
    Hold = false,
    Callback = function()
        targetItem59 = game.Workspace.Tycoons[_G.tyc].Machine.Zoom
        targetItem59.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        sent_message("Spawn Point?", "Now after you click Zoom Button ur character will come to this part")
end
})

Tab2:AddTextbox({
	Name = "Music Id | Background Music",
	Default = "id",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.BackgroundMusic.SoundId = Value
	end	  
})

Tab2:AddSlider({
	Name = "Volume | Background Music",
	Min = 0,
	Max = 50,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "volume of music",
	Callback = function(Value)
		game.Workspace.BackgroundMusic.Volume = Value
	end    
})

Tab3:AddButton({
    Name = "Night | Time",
    Callback = function()
        game.Lighting.TimeOfDay = "22:00:00"
    end
})



Tab3:AddButton({
    Name = "Day | Time",
    Callback = function()
        game.Lighting.TimeOfDay = "12:00:00"
    end
})

Tab3:AddTextbox({
	Name = "Custom | Time",
	Default = "n",
	TextDisappear = true,
	Callback = function(Value)
sent_message("Light", "Current TimeOfDay: "..Value)
		game.Lighting.TimeOfDay = Value
	end	  
})

local Tab5 = Window:MakeTab({
    Name = "Others",
	Icon = "https://www.roblox.com/library/1182448771/Music?Category=Decals&SortType=Relevance&SortAggregation=AllTime&SearchKeyword=Music&CreatorId=0&Page=2&Position=42&SearchId=7bf4bb83-46f0-487b-a60e-c62dc42feb44",
	PremiumOnly = false
})

local Section = Tab5:AddSection({
	Name = "Risky Stuff"
})

Tab5:AddTextbox({
	Name = "Teleport To | Dont Use It too Much",
	Default = "name of player",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[Value].HumanoidRootPart.CFrame
	end	  
})


local Section = Tab5:AddSection({
    Name = "Help"
})

Tab5:AddButton({ 
Name = "Leave | Get Kicked",
Callback = function()
    game.Players.LocalPlayer:Kick("Leaving the game, Ty for using my gui, by adminhecker9")
end
}) 

Tab5:AddButton({ Name = "Anti-Admin | Test Script", 
Callback = function() 

    function kick()
        game.Players.LocalPlayer:Kick()
        end
        
        game.Players.PlayerAdded:Connect(function(plr)
            if plr.UserId == 359752057 then
                kicK()
            end
            if plr.UserId == 666487673 then
                kick()
            end
            if plr.UserId == 122404304 then
                kick()
            end
            if plr.UserId == 274648224 then
                kick()
            end
            if plr.UserId == 2334753402 then
                kick()
            end
            if plr.UserId == 380627588 then
                kick()
            end
            if plr.UserId == 2888174376 then
                kick()
            end
            if plr.UserId == 170257873 then
                kick()
            end
        end)
sent_message("Anti", "anti admin is working")
end})


OrionLib:Init()

