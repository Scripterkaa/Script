
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

--

function change()
    local c = game:GetService("Workspace").Fartinglloll:FindFirstChild("ratio")
    c.Name = num
    num = num +1
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
        local tween = ts:Create(playerpos, info, {CFrame = tar.HumanoidRootPart.CFrame * CFrame.new(0,0,10.5)})
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