local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/M7ilan/UI/main/UILib/UILib.lua"))()

local UILib = UILib.CreateWindow("SPFS")



local Examples = UILib:Tab("Examples")
local ff = Examples:Section("All Examples")
ff:Label("Welcome to Wisteria GUI")

ff:Button("TextButton Text", function()
    print("Clicked!")
end)

ff:Toggle("Toggle Me!", false, function(isToggled)
    print(isToggled) -- prints true or false
end)

ff:KeyBind("Print('Hey') on bind", Enum.KeyCode.R, function() --Enum.KeyCode.R is starting Key
    print('Hey')
end)

ff:TextBox("TextBox Info", "Epic PlaceHolder", function(getText)
    print(getText) -- Prints whatever player types
end)

ff:Slider("WalkSpeed", 16, 503, function(currentValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = currentValue
end)

ff:DropDown("Favorite Food?", {"Pizza", "Burger", "Sandwiches"}, function(food) -- food is chosen item
    print(food)
end)

ff:DestroyButton()