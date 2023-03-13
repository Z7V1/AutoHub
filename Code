local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


--Values
_G.autoBlowBubbles = true
_G.autoHatch = true
_G.selectEgg = "Common Egg"

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
        wait(5)      
end
end

function sellBubbles()
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("Teleport", "Sell")
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

--Sections
local Section = FarmTab:AddSection({
	Name = "Auto Farm"
})

local Section = EggTab:AddSection({
	Name = "Egg Stuff"
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

--Dropdowns
EggTab:AddDropdown({
	Name = "Eggs",
	Default = "Common Egg",
	Options = {"Common Egg", "Spotted Egg", "Ice Shard Egg", "Spikey Egg", "Magma Egg", "Crystal Egg", "Lunar Egg", "Void Shard Egg", "Hell Egg", "Nightmare Egg", "Rainbow Egg"},
	Callback = function(Value)
        _G.selectEgg = Value
        print(_G.selectEgg)
	end    
})

--Buttons
FarmTab:AddButton({
	Name = "Sell Bubbles",
	Callback = function()
            sellBubbles()
    end
})
