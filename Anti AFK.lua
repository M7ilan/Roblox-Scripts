local VU = game:GetService("VirtualUser")
local LP = game:GetService("Players").LocalPlayer

LP.Idled:Connect(function()
    VU:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    VU:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
