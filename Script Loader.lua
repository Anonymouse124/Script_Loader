local Window = OrionLib:MakeWindow({Name = "Script Hub", HidePremium = false, SaveConfig = true, IntroText = "Script Hub"})

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "Crimson Hub",
    function MakeScriptHub()
        print("EnteredCorrectKey")
        function loadstring(game:HttpGet("https://raw.githubusercontent.com/Anonymouse124/CrimsonHub/main/Script_Loader2.lua", true))
        end
    end
})

Tab:AddButton({
    Name = "My Scripts(Comming Soon)",
    function MakeScriptHub()
        print("EnteredCorrectKey")
        function loadstring(game:HttpGet("https://raw.githubusercontent.com/Anonymouse124/CrimsonHub/main/Script_Loader3.lua", true))
        end
    end
})

Tab:AddButton({
    Name = "Public Scripts",
    function MakeScriptHub()
        print("EnteredCorrectKey")
        function loadstring(game:HttpGet("https://raw.githubusercontent.com/Anonymouse124/CrimsonHub/main/Script_Loader4.lua", true))
        end
    end
})
