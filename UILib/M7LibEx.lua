local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/M7ilan/Roblox/main/UILib/M7Lib.lua"))()

local Window = UILib.CreateWindow("UI Example", "v1.0.0") -- UI Window



local GameTab = Window:Tab("Examples") -- Tab
local GameSection = GameTab:Section("All Example") -- Section



GameSection:Label("Welcome to M7Lib!") -- Lable

GameSection:Button("Text Button", function() -- Text Button
    print("Clicked!")
end)

GameSection:Toggle("Toggle Me!", false, function(bool) -- default toggled off
    print(bool) -- prints true or false
end)

GameSection:KeyBind("Print 'Hey' on key click", Enum.KeyCode.R, function() -- Enum.KeyCode.R (R Key) is the default Key
    print('Hey')
end)

GameSection:TextBox("TextBox Info", "PlaceHolder", function(Text) --Text Box
    print(Text) -- Prints whatever player types
end)

GameSection:Slider("Player Speed", 16, 500, function(currentValue) -- Slider
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = currentValue
end)

GameSection:DropDown("Favorite Game?", {"Roblox", "Destiny 2", "Minceraft"}, function(game) -- DropDown
    print(game)
end)

Window:DestroyButton() -- Destroy GUI
