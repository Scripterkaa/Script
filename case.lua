
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local ui = library.new("Stand Upright | ")
loadstring(game:HttpGet'https://github.com/sannin9000/scripts/raw/main/Stand%20Upright%20Bypass.lua')()
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 0, 0)
}
local num = 1
local tar

--

_G.ham = false
_G.farm = false
_G.jo = false
_G.lair80 = false
_G.change = false
_G.lair = false
_G.lair40 = false
_G.drop = false
_G.item = false

-- status

local lairing = false
local bossing = false
local doquest
local farmmob
local folname = "dawg"

--

function change()
    local c = game:GetService("Workspace")[folname]:FindFirstChild("ratio")
    c.Name = num
    num = num +1
end
function changee()
    local c = game:GetService("Workspace")[folname]:FindFirstChild("e")
    c.Name = num
    num = num +1
end
function hamoncharge()
    pcall(function()
        local args = {
            [1] = true
        }

        game:GetService("Players").LocalPlayer.Character.SecondaryHandler.B:FireServer(unpack(args))
    end)
end
function boss()
    pcall(function()
        for _,k in pairs(game:GetService("Workspace")[folname]:GetChildren()) do
            if k.Name == "28" then
                k.Done:FireServer()
            end
        end
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if v.Name == "Boss" and v.Head.Display.Frame.t.Text == "Diavolo [Dungeon]" then
                summon()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5.5)
                v.Humanoid.Health = 0
                            
                summon()
                v.Humanoid.Health = 0
                v.Humanoid.Health = 0
                v.Humanoid.Health = 0
                punch()
            end
        end
    end)
end

function boss40()
    pcall(function()
        for _,k in pairs(game:GetService("Workspace")[folname]:GetChildren()) do
            if k.Name == "21" then
                k.Done:FireServer()
            end
        end
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if v.Name == "Boss" and v.Head.Display.Frame.t.Text == "Dio [Dungeon]" then
                v.Humanoid.Health = 0
                summon()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5.5)
                v.Humanoid.Health = 0
                            
                summon()
                v.Humanoid.Health = 0
                v.Humanoid.Health = 0
                v.Humanoid.Health = 0
                punch()
            end
        end
        
    end)
end

function boss80()
    pcall(function()
        for _,k in pairs(game:GetService("Workspace")[folname]:GetChildren()) do
            if k.Name == "27" then
                k.Done:FireServer()
            end
        end
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if v.Name == "Boss" and v.Head.Display.Frame.t.Text == "Homeless Lord" then
                v.Humanoid.Health = 0
                summon()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5.5)
                v.Humanoid.Health = 0
                            
                summon()
                v.Humanoid.Health = 0
                v.Humanoid.Health = 0
                v.Humanoid.Health = 0
                punch()
            end
        end
        
    end)
end

function check()
    pcall(function()
        local am = 0
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Charged Arrow" then
                am = am +1
            end
        end
        ui:Notify("Amount",am)
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
changee()
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
    pcall(function()
        if game.Players.LocalPlayer.Character.Stand.UpperTorso.Transparency == 1 then
            game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
        end
    end)
end
function barrage()
    local args = {
        [1] = true
    }
    
    game:GetService("Players").LocalPlayer.Character.StandEvents.Barrage:FireServer(unpack(args))
end
function punch()
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer() 
    end)
end
function clone()
    game:GetService("Players").LocalPlayer.Character.StandEvents.StarFinger:FireServer()
end
function main()
    pcall(function()
        fullyfarm()
        local tar = nil
        for i,v in pairs(game:GetService("Workspace")[folname]:GetChildren()) do
            if doquest ~= nil then
                if v.Name == doquest then
                    v.Done:FireServer()
                    v.QuestDone:FireServer()
                end
            end
        end
        summon()
        for i,v in pairs(game.workspace.Living:GetChildren()) do
            if v.Name == farmmob and v.Humanoid.Health ~=0 then
                tar = v
            end
            if v.Humanoid.Health == 0 then
                tween(game:GetService("Workspace").gettingbdLOLLLL.HumanoidRootPart)
            end
        end
        tween(tar.HumanoidRootPart)
        punch()
    end)
end
local tw
function tween(pos,n)
    pcall(function()
        local playerpos = game.Players.LocalPlayer.Character.HumanoidRootPart
        local newpos = pos.CFrame
        playerpos.CFrame = newpos * CFrame.new(0,0,7)
    end)
end

function fullyfarm()
    pcall(function()
        local lvl = game.Players.LocalPlayer.Data.Level

        if lvl.Value < 25 then
            farmmob = "Jotaro Part 4"
        elseif lvl.Value >= 25 and lvl.Value < 30 then
            doquest = "8"
            farmmob = "Dio Over Heaven"
        elseif lvl.Value >= 30 and lvl.Value < 40 then
            doquest = "9"
            farmmob = "Yoshikage Kira"
        elseif lvl.Value >= 40 and lvl.Value < 50 then
            doquest = "10"
            farmmob = "Angelo"
        elseif lvl.Value >= 50 and lvl.Value < 65 then
            doquest = "11"
            farmmob = "Alien"
        elseif lvl.Value >= 65 and lvl.Value < 75 then
            doquest = "12"
            farmmob = "Jotaro Part 4"
        elseif lvl.Value >= 75 and lvl.Value < 90 then
            doquest = "13"
            farmmob = "Kakyoin"
        elseif lvl.Value >= 90 then
            doquest = "14"
            farmmob = "Jungle Bandit"
        end
    end)
end
function fpsboost()
    pcall(function()
        local a = game
        local b = a.Workspace
        local c = a.Lighting
        local d = b.Terrain
        d.WaterWaveSize = 0
        d.WaterWaveSpeed = 0
        d.WaterReflectance = 0
        d.WaterTransparency = 0
        c.GlobalShadows = false
        c.FogEnd = 9e9
        c.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for e, f in pairs(a:GetDescendants()) do
        if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
            f.Material = "Plastic"
            f.Reflectance = 0
        elseif f:IsA("Decal") or f:IsA("Texture") then
            f.Transparency = 0
        elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
            f.Lifetime = NumberRange.new(0)
        elseif f:IsA("Explosion") then
            f.BlastPressure = 0
            f.BlastRadius = 0
        elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
            f.Enabled = false
        elseif f:IsA("MeshPart") then
            f.Material = "Plastic"
            f.Reflectance = 0
            f.TextureID = 10385902758728957
        end
        end
        for e, g in pairs(c:GetChildren()) do
        if
            g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
                g:IsA("DepthOfFieldEffect")
            then
            g.Enabled = false
        end
        end
        sethiddenproperty(game.Lighting, "Technology", "Compatibility")
    end)
end

function jo()
    pcall(function()
        summon()
        bossing = false
        local tar = nil
        for i,v in pairs(game.workspace.Living:GetChildren()) do
            if v.Name == "Jotaro Over Heaven" then
                bossing = true
                tar = v
            end
        end
        tween(tar.HumanoidRootPart,"w")
        tar.Humanoid.Health = 0
        punch()
    end)
end
function drop(a)
    pcall(function()
        local toosl = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(a)
        toosl.Parent = game:GetService("Players").LocalPlayer.Character
        wait(.2)
        require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain).MessagePosted:fire("/dropitem")
    end)
end

local page1 = ui:addPage("Main", 5012540643)

local sec = page1:addSection("Auto Farm")

sec:addToggle("Auto Farm", _G.farm, function(go)
	if go then
        _G.farm = true
        while _G.farm == true do
            punch()
            wait()
            main()
        end
    else
        _G.farm = false
    end
end)
sec:addToggle("Auto Charge Hamon", nil, function(go)
	if go then
        _G.ham = true
       
        while _G.ham == true do
            wait()
            hamoncharge()
        end
    else
        _G.ham = false
    end
end)
sec:addToggle("Auto Jotaro", _G.jo, function(go)
	if go then
        _G.jo = true
       
        while _G.jo == true do
            wait()
            jo()
        end
    else
        _G.jo = false
    end
end)

local slair = page1:addSection("Auto Lairs")

slair:addToggle("Auto Lair lvl.40", _G.lair40, function(go)
	if go then
        _G.lair40 = true
        while _G.lair40 == true do
            wait()
            boss40()
            lairing = true
        end
    else
        _G.lair40 = false
    end
end)

slair:addToggle("Auto Lair lvl.80", _G.lair80, function(go)
	if go then
        _G.lair80 = true
        while _G.lair80 == true  do
            wait()
            boss80()
            lairing = true
        end
    else
        _G.lair80 = false
    end
end)

slair:addToggle("Auto Lair lvl.100", _G.lair, function(go)
	if go then
        _G.lair = true
        while _G.lair == true do
            wait()
            boss()
            lairing = true
        end
    else
        _G.lair = false
    end
end)

local mm = page1:addSection("Misc")

mm:addButton("Check Charged Arrow",function()
    check()
end)
mm:addToggle("Drop Stone Mask",nil,function(go)
    if go then
        _G.drop = true
        while _G.drop == true do
            drop("Stone Mask")
            wait()
        end
    else
        _G.drop = false
    end
end)
mm:addToggle("Drop Requiem Arrow",nil,function(go)
    if go then
        _G.drop = true
        while _G.drop == true do
            drop("Requiem Arrow")
            wait()
        end
    else
        _G.drop = false
    end
end)
mm:addButton("FPS Boost",function()
    fpsboost()
end)
mm:addToggle("Anti AFK",nil,function(go)
    if go then
        _G.anti = true
        while _G.anti == true do
            wait(60)
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
mm:addKeybind("Toggle", Enum.KeyCode.RightControl,function()
    ui:toggle()
end)

local page2 = ui:addPage("Shop", 5012537953)

local sec2 = page2:addSection("Lite Shop")

sec2:addButton("Buy Standard Arrow x5",function()
    local args = {
        [1] = "Merchant1",
        [2] = "Option3"
    }
    
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
end)

sec2:addButton("Buy Rokakaka x5",function()
    local args = {
        [1] = "Merchant1",
        [2] = "Option1"
    }
    
    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
end)

local hb = page2:addSection("Huge Shop")

hb:addButton("Buy Stand Arrow x50",function()
    local args = {
        [1] = "Merchant1",
        [2] = "Option3"
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
hb:addButton("Buy Rokaka x50",function()
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

ui:SelectPage(ui.pages[1], true)
