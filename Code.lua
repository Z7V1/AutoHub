if game.PlaceId == 2512643572 then
	--This is BubbleGumSim
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})



--Values
_G.autoBlowBubbles = true
_G.autoHatch = true
_G.autoMultiHatch = true
_G.selectEgg = "Common Egg"
_G.teleportSelect = "The Floating Island"

--Functions

function autoBlowBubbles()
	while _G.autoBlowBubbles == true do
		game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("BlowBubble");
		wait(.0001)
	end
end

function autoHatch()
    while _G.autoHatch == true do
        game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("PurchaseEgg", _G.selectEgg)
        wait(1)      
end
end

function autoMultiHatch()
    while _G.autoMultiHatch == true do
        game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("PurchaseEgg", _G.selectEgg, "Multi")
        wait(1)      
end
end

function sellBubbles()
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("Teleport", "Sell")
    wait(0.1)
end

function teleport()
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("TeleportToCheckpoint", _G.teleportSelect)
    wait(0.1)
end
function event()
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("Teleport", "EventSpawn")
    wait(0.1)
end
		
--Tabs
local FarmTab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local TeleportTab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Sections
local Section = FarmTab:AddSection({
	Name = "Auto Farm"
})

local Section = EggTab:AddSection({
	Name = "Egg Stuff"
})
local Section = TeleportTab:AddSection({
    Name = "Teleports"
})
local Section = TeleportTab:AddSection({
	Name = "Other Teleports"
})
local Section = SettingsTab:AddSection({
	Name = "Settings"
})
--Toggles
FarmTab:AddToggle({
	Name = "Auto Blow Bubbles",
	Default = false,
	Callback = function(Value)
		_G.autoBlowBubbles = Value
		autoBlowBubbles()
	end 
	   
})

EggTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = Value
        autoHatch()
	end 
	   
})

EggTab:AddToggle({
	Name = "Auto Multi Hatch (Must have Gamepass)",
	Default = false,
	Callback = function(Value)
		_G.autoMultiHatch = Value
        autoMultiHatch()
	end 
	   
})

--Dropdowns
EggTab:AddDropdown({
	Name = "Eggs",
	Default = "Common Egg",
	Options = {"Common Egg", "Spotted Egg", "Ice Shard Egg", "Spikey Egg", "Magma Egg", "Crystal Egg", "Lunar Egg", "Void Shard Egg", "Hell Egg", "Nightmare Egg", "Rainbow Egg", "Frosted Egg", },
	Callback = function(Value)
        _G.selectEgg = Value
        print(_G.selectEgg)
	end    
})
TeleportTab: AddDropdown({
    Name = "Teleports",
    Default = "The Floating Island",
    Options = {"The Floating Island", "Space", "The Twilight", "The Skylands", "The Void", "XP Island", "Zen"},
    Callback = function(Value)
        _G.teleportSelect = Value
        print(_G.teleportSelect)
    end
})

--Buttons
FarmTab:AddButton({
	Name = "Sell Bubbles",
	Callback = function()
            sellBubbles()
    end
})
TeleportTab:AddButton({
	Name = "Teleport",
	Callback = function()
            teleport()
    end
})
TeleportTab:AddButton({
	Name = "Event Teleport",
	Callback = function()
            event()
    end
})
--ColorPicker
SettingsTab:AddColorpicker({
	Name = "UI Color Changer",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})


elseif game.PlaceId == 11162791099 then
--This is 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


--Values
_G.autoRebirth = true
_G.rebirthSelect = "1"




--Functions

function autoRebirth()
	while _G.autoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(_G.rebirthSelect);
		wait(6)
	end
end

--Tabs
local AutoTab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Sections
local Section = AutoTab:AddSection({
	Name = "Auto Farm"
})

--labels
AutoTab:AddLabel("The options for the rebirths are in order, 1 being 1 rebirth, 5 being 10 rebirths, 10 being 500 rebirths and so on.")
	
	
--Toggles
AutoTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = Value
		autoRebirth()
	end 
	   
})


--Dropdowns
AutoTab:AddDropdown({
	Name = "Rebirths",
	Default = "1",
	Options = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"},
	Callback = function(Value)
		_G.rebirthSelect = Value
		print(_G.rebirthSelect)
	end
})

OrionLib:MakeNotification({
	Name = "[🍀AUTO REBIRTH] Free Hatchers",
	Content = "Game Loaded!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

end
OrionLib:Init()
