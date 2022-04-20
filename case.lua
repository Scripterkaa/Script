
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local ui = library.new("Stand Upright", 5013109572)


local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 0, 0)
}

local page1 = ui:addPage("Main", 5012544693)

local sec = page1:addSection("Auto Farm")

local num = 1
local tar

--

_G.k = true
_G.farm = false
_G.change = false
_G.lair = false
_G.item = false

--

function change()
    local c = game:GetService("Workspace").Fartinglloll:FindFirstChild("ratio")
    c.Name = num
    num = num +1
end

function boss()
    pcall(function()
        for _,k in pairs(game:GetService("Workspace").Fartinglloll:GetChildren()) do
            if k.Name == "28" then
                k.Done:FireServer()
                wait(1)
            end
        end
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if v.Name == "Boss" then
                summon()
                v.Humanoid.Health = 0
                local playerpos = game.Players.LocalPlayer.Character.HumanoidRootPart
                local ts = game:GetService("TweenService")  
                local info = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
                local tween = ts:Create(playerpos, info, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,10)})
                v.Humanoid.Health = 0
                tween:Play()
                v.Humanoid.Health = 0
                punch()
                v.Humanoid.Health = 0
            end
        end
    end)
end

change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()
change()

function summon()
    if game.Players.LocalPlayer.Character.Stand.Head.Transparency == 1 then
        game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
    end
end
function barrage()
    local args = {
        [1] = true
    }
    
    game:GetService("Players").LocalPlayer.Character.StandEvents.Barrage:FireServer(unpack(args))
end
function punch()
   game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer() 
end
function clone()
    game:GetService("Players").LocalPlayer.Character.StandEvents.StarFinger:FireServer()
end
function main()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Fartinglloll:GetChildren()) do
            if v.Name == "14" then
                
                v.Done:FireServer()
                v.QuestDone:FireServer()
            end
        end
        summon()

        for i,v in pairs(game.workspace.Living:GetChildren()) do
            if v.Name == "Jungle Bandit" and v.Humanoid.Health ~=0 then
            tar = v
            end
        end
        local playerpos = game.Players.LocalPlayer.Character.HumanoidRootPart
        local ts = game:GetService("TweenService")  
        local info = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
        local tween = ts:Create(playerpos, info, {CFrame = tar.HumanoidRootPart.CFrame * CFrame.new(0,0,10)})
        if tar.Humanoid.Health ~= 0 then
            tween:Play()
        end
        punch()
    end)
end


sec:addToggle("Auto Farm", _G.farm, function(go)
	if go then
        _G.farm = true
        while _G.farm == true do
            wait()
            main()
        end
    else
        _G.farm = false
    end
end)
sec:addToggle("Auto Lair lvl.100", _G.lair, function(go)
	if go then
        _G.lair = true
        while _G.lair == true do
            wait()
            boss()
        end
    else
        _G.lair = false
    end
end)

sec:addButton("Buy Arrow + Rokaka x5",function()
    local args = {
        [1] = "Merchant1",
        [2] = "Option1"
    }
    
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    local args = {
        [1] = "Merchant1",
        [2] = "Option3"
    }
    
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
end)
sec:addButton("Buy Rokaka x50",function()
    local args = {
        [1] = "Merchant1",
        [2] = "Option1"
    }
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
end)
sec:addToggle("Anti AFK",nil,function(go)
    if go then
        _G.anti = true
        while _G.anti == true do
            wait()
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end
    else
        _G.anti = false
    end
end)
sec:addKeybind("Toggle", Enum.KeyCode.RightControl,function()
    ui:toggle()
end)
