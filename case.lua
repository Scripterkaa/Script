
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local ui = library:MakeWindow({Name = "Stand Upright", HidePremium = false, SaveConfig = false, ConfigFolder = "Nothing"})
loadstring(game:HttpGet'https://github.com/sannin9000/scripts/raw/main/Stand%20Upright%20Bypass.lua')()

local num = 1
local tar

--
_G.autoarrow = false
_G.autoroka = false
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
local folname = "hello exploiter why u see the Annoying Orange"

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
        playerpos.CFrame = newpos * CFrame.new(0,0,3)
    end)
end
function bringstand()
    pcall(function()
        game.Players.LocalPlayer.Character.Stand.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
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
        elseif lvl.Value >= 90 and lvl.Value < 130 then
            doquest = "14"
            farmmob = "Jungle Bandit"
        elseif lvl.Value >= 130 then
            doquest = "30"
            farmmob = "Sewer Vampire"
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

function pick(a)
    pcall(function()
        local toosl = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(a)
        toosl.Parent = game:GetService("Players").LocalPlayer.Character
    end)
end

function Randomleg(a)
    pcall(function()
        local currentatt = game.Players.LocalPlayer.Data.Attri
        local currentst = game.Players.LocalPlayer.Data.Stand
        if currentatt.Value ~= "Legendary" then
            if currentst.Value ~= "None" then
                pick("Rokakaka")
                game:GetService("Players").LocalPlayer.Character.Rokakaka.Use:FireServer()
                wait(1.5)
            elseif currentst.Value == "None" then
                pick(a)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(a).Use:FireServer()
                wait(5)
            end
        end
    end)
end

local page1 = ui:MakeTab({
    Name = "Main"
})

local sec = page1:AddSection({
    Name = "Auto Farm"
})

sec:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(go)
		if go then
            _G.farm = true
            while _G.farm == true do
                bringstand()
                wait()
                main()
            end
        else
            _G.farm = false
        end
	end    
})
	
sec:AddToggle({
	Name = "Auto Jotaro",
	Default = false,
	Callback = function(go)
		if go then
            _G.jo = true
           
            while _G.jo == true do
                wait()
                jo()
            end
        else
            _G.jo = false
        end
	end    
})

local slair = page1:AddSection({
    Name = "Auto Lairs"
})

slair:AddToggle({
	Name = "Auto Lairs Lv.40",
	Default = false,
	Callback = function(go)
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
	end    
})


slair:AddToggle({
	Name = "Auto Lairs Lv.80",
	Default = false,
	Callback = function(go)
		if go then
            _G.lair80 = true
            while _G.lair80 == true do
                wait()
                boss80()
                lairing = true
            end
        else
            _G.lair80 = false
        end
	end    
})

slair:AddToggle({
	Name = "Auto Lairs Lv.100",
	Default = false,
	Callback = function(go)
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
	end    
})

local mm = page1:AddSection({
    Name = "Misc"
})

mm:AddToggle({
	Name = "Drop Stone Mask",
	Default = false,
	Callback = function(go)
		if go then
            _G.drop = true
            while _G.drop == true do
                drop("Stone Mask")
                wait()
            end
        else
            _G.drop = false
        end
	end    
})

mm:AddToggle({
	Name = "Anti AFK",
	Default = false,
	Callback = function(go)
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
	end    
})
local sta = ui:MakeTab({
    Name = "Stand"
})
local autoran = sta:AddSection({
    Name = "Legendary!!"
})

autoran:AddToggle({
	Name = "Auto Find LEGENDARY (STAND ARROW)",
	Default = false,
	Callback = function(go)
		if go then
            _G.autoleg = true
            while _G.autoleg == true do
                wait()
                Randomleg("Stand Arrow")
            end
        else
            _G.autoleg = false
        end
	end    
})

autoran:AddToggle({
	Name = "Auto Find LEGENDARY (CHARGED ARROW)",
	Default = false,
	Callback = function(go)
		if go then
            _G.autoleg = true
            while _G.autoleg == true do
                wait()
                Randomleg("Charged Arrow")
            end
        else
            _G.autoleg = false
        end
	end    
})

local page2 = ui:MakeTab({
    Name = "Shop"
})

local autobuy = page2:AddSection({
    Name = "Auto Shop"
})

autobuy:AddToggle({
	Name = "Auto Buy Arrow",
	Default = false,
	Callback = function(go)
		if go then
            _G.autoarrow = true
            while _G.autoarrow == true do
                wait(1)
                local amount = 0
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Stand Arrow" then
                        amount = amount +1
                    end
                end
                if amount == 0 then
                    local args = {
                        [1] = "MerchantAU",
                        [2] = "Option3"
                    }
                    
                    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
                end
            end
        else
            _G.autoarrow = false
        end
	end
})
autobuy:AddToggle({
	Name = "Auto Buy Rokakaka",
	Default = false,
	Callback = function(go)
		if go then
            _G.autoroka = true
            while _G.autoroka == true do
                wait(1)
                local amountr = 0
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Rokakaka" then
                        amountr = amountr +1
                    end
                end
                if amountr == 0 then
                    local args = {
                        [1] = "MerchantAU",
                        [2] = "Option1"
                    }
                    
                    game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
                end
            end
        else
            _G.autoroka = false
        end
	end
})
local sec2 = page2:AddSection({
    Name = "Lite Shop"
})



sec2:AddButton({
	Name = "Buy x5 Arrow!",
	Callback = function()
        local args = {
            [1] = "MerchantAU",
            [2] = "Option3"
        }
        
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
  	end    
})
    


sec2:AddButton({
	Name = "Buy x5 Rokakaka!",
	Callback = function()
        local args = {
            [1] = "MerchantAU",
            [2] = "Option1"
        }
        
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
  	end    
})
