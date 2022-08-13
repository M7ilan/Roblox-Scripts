local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/M7ilan/Roblox/main/UILib/UILib.lua"))()

local Window = UILib.CreateWindow("UI Example") -- UI Window



local Tab1 = Window:Tab("Examples") -- Tab
local Section1 = Tab1:Section("All Example") -- Section



Section1:Label("Welcome to M7Lib!") -- Lable

Section1:Button("Text Button", function() -- Text Button
    print("Clicked!")
end)

Section1:Toggle("Toggle Me!", false, function(bool) -- default toggled off
    print(bool) -- prints true or false
end)

Section1:Toggle("Toggle Me!", true, function(bool) -- default toggled on
    print(bool) -- prints true or false
end)

Section1:KeyBind("Print 'Hey' on key click", Enum.KeyCode.R, function() -- Enum.KeyCode.R (R Key) is the default Key
    print('Hey')
end)

Section1:TextBox("TextBox Info", "PlaceHolder", function(Text) --Text Box
    print(Text) -- Prints whatever player types
end)

Section1:Slider("Player Speed", 16, 500, function(currentValue) -- Slider
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = currentValue
end)

Section1:DropDown("Favorite Game?", {"Roblox", "Destiny 2", "Minceraft"}, function(game) -- DropDown
    print(game)
end)



Window:DestroyButton() -- Destroy GUI
