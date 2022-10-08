if game.PlaceId == 8750997647 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
_G.autoTap = true
_G.autoRebirth = true
_G.autoHatch = true
_G.selectEgg = "Basic Egg"
_G.autoEquip = true

-- Functions

function autoTap()
    while _G.autoTap == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        wait(.0001)
    end
end

function autoRebirth()
    while _G.autoRebirth == true do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(11)
        wait(.0001)
    end
end

function autoHatch()
    while _G.autoHatch == true do
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.selectEgg,1)
        wait(.0001)
    end
end

function equipBest()
        game:GetService("ReplicatedStorage").Remotes.UnequipAll:InvokeServer()
        wait(1)
        game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
end

function autoEquipBest()
    while _G.autoEquipBest == true do
        game:GetService("ReplicatedStorage").Remotes.UnequipAll:InvokeServer()
        wait(1)
        game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
        wait(30)
    end
end

-- Tabs
local FarmTab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Toggles
FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap == Value
        autoTap()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth == Value
        autoRebirth()
	end    
})

EggsTab:AddLabel("NOTICE: You need to be Near the egg To Autohatch.")

EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
        _G.autoHatch = Value
        autoHatch()
	end    
})

MiscTab:AddToggle({
	Name = "Auto equip best pets",
	Default = false,
	Callback = function(Value)
        _G.autoEquipBest = Value
        autoEquipHatch()
	end    
})

MiscTab:AddButton({
	Name = "Equip Best Pets",
	Callback = function()
      		equipBest()
  	end    
})


-- Dropdowns

EggsTab:AddDropdown({
	Name = "Sellect Egg",
	Default = "Basic Egg",
	Options = {"Basic Egg", "Rare Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
        print(_G.selectEgg)
	end    
})

end
OrionLib:Init()
