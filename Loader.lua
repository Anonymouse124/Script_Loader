local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroText = "Key System"})

OrionLib:MakeNotification({
    Name = "Logged in",
    Content = "You are logged in as"..Players.Name..",",
    Image = "rbxassetid://4483345998",
    Time = 5
})

_G.Key = "Crimson"
_G.KeyInput = "string"

function MakeScriptHub()
    print("EnteredCorrectKey")
    local Window = OrionLib:MakeWindow({Name = "Script Hub", HidePremium = false, SaveConfig = true, IntroText = "Crimson Hub"})
        
    Tab:AddButton({
	    Name = "Check Key",
	    Callback = function()
        	if _G.KeyInput = _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
            else
                IncorrectKeyNotification()
            end
      	end    
    })
    end
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end    

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end	  
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
      	if _G.KeyInput = _G.Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end
    end    
})
