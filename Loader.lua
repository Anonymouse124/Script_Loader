--Galaxy Temp Key System
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Galaxy Scripts | Key System", HidePremium = true, IntroText = "Galaxy Key System", IntroIcon = "http://www.roblox.com/asset/?id=10681543154"})
local Player = game.Players.LocalPlayer
OrionLib:MakeNotification({
	Name = "Crimson Key",
	Content = "Please enter the key " ..Player.Name.."",
	Image = "http://www.roblox.com/asset/?id=11216830603",
	Time = 5
})

_G.Key = "CrimsonHub"
_G.KeyInput = "string"

function WrongKeyNotif()
    OrionLib:MakeNotification({
        Name = "Wrong Key!",
        Content = "Double Check The Key, " ..Player.Name.."",
        Image = "http://www.roblox.com/asset/?id=11216830603",
        Time = 5
    })
end



local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "http://www.roblox.com/asset/?id=11216755736",
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
	Name = "Submit Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
            wait(0.001)
            OrionLib:Destroy()
            wait(0.1)
	    if pcall(function() game:HttpGet("https://raw.githubusercontent.com/Anonymouse124/Script_Loader/main/Games/"..game.PlaceId..".lua") end) then
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/Anoymouse124/Script_Loader/main/Games/"..game.PlaceId..".lua"))()
	    else
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/Anonymouse124/Script_Loader/main/"))()
	    end
        else
            WrongKeyNotif()
        end
  	end  
})
