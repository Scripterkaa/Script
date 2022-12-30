
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local ui = library:MakeWindow({Name = "Stand Upright", HidePremium = true, IntroText = "Enjoy the Script"})
loadstring(game:HttpGet'https://github.com/sannin9000/scripts/raw/main/Stand%20Upright%20Bypass.lua')()

local num = 1
local tar
local randomcount = 0
--
_G.lair200 = false
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
local folname = "fart2"

--

function change()
    local c = game:GetService("Workspace")[folname].Idiot:FindFirstChild("ratio")
    c.Name = num
    num = num +1
end
function changee()
    local c = game:GetService("Workspace")[folname].Idiot:FindFirstChild("e")
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
function boss200()
    pcall(function()
        for _,k in pairs(game:GetService("Workspace")[folname]:GetChildren()) do
            if k.Name == "32" then
                k.Done:FireServer()
            end
        end
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if v.Name == "Boss" and v.Head.Display.Frame.t.Text == "Jotaro P6 [Dungeon]" then
                v.Humanoid.Health = 0
                summon()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,8.5)
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
        elseif lvl.Value >= 130 and lvl.Value < 300 then
            doquest = "30"
            farmmob = "Sewer Vampire"
        elseif lvl.Value >= 300 then
            doquest = "33"
            farmmob = "Pillerman"
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

function invisible()
    pcall(function()
        local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        tween(game:GetService("Workspace").gettingbdLOLLLL.HumanoidRootPart)
        game.Players.LocalPlayer.Character.LowerTorso:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
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
local currentatt = game.Players.LocalPlayer.Data.Attri
local currentst = game.Players.LocalPlayer.Data.Stand
function Randomleg(a)
    pcall(function()
        
        if currentatt.Value ~= "Legendary" then

            
            if currentst.Value ~= "None" then
                pick("Rokakaka")
                game:GetService("Players").LocalPlayer.Character.Rokakaka.Use:FireServer()
                wait(1.5)
            elseif currentst.Value == "None" then
                pick(a)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(a).Use:FireServer()
                wait(4)
                randomcount = randomcount + 1
                print("ไอเหี้ยมึงสุ่มขยะไปตั้ง",randomcount,"ตัว")
                print("Stand:",currentst.Value)
                print("Attribute:",currentatt.Value)
            end
        else
            webhook()
            game.Players.LocalPlayer:Kick("ได้รีเจ้นละไอเวร!!! มึงรู้ไหมมึงสุ่มไปตั้ง",randomcount,"รอบ")
        end
    end)
end

local page1 = ui:MakeTab({
    Name = "Main"
})

local sec = page1:AddSection({
    Name = "Auto Buy"
})

sec:AddToggle({
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
sec:AddToggle({
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
local autoran = page1:AddSection({
    Name = "Legendary!!"
})
autoran:AddToggle({
	Name = "Auto Find LEGENDARY (STAND ARROW)",
	Default = false,
	Callback = function(go)
		if go then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").StorageRoomAreaPart.CFrame
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
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").StorageRoomAreaPart.CFrame
            while _G.autoleg == true do
                wait()
                Randomleg("Charged Arrow")
            end
        else
            _G.autoleg = false
        end
	end    
})
local antiafk = autoran:AddToggle({
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

function webhook()
    pcall(function()
        local ExecutorUsing = syn and "Synapse X" or secure_load
        local HttpService = game:GetService("HttpService")
        local Data =
            {
                ["embeds"]= {
                    {            
                        ["title"]= "เห้ยๆๆ ไอเหี้ยมีคนได้ๆ";
                        ["color"]= tonumber(0x7269da);
                        
                        ["fields"]= {
                            {
                                ["name"]= "Name",
                                ["value"]= "```"..game.Players.LocalPlayer.Name.."```",
                                ["inline"]= false
                            },
                            {
                                ["name"]= "Current Stand",
                                ["value"]= "```"..currentst.Value.."```",
                                ["inline"]= false
                            },
                            {
                                ["name"]= "UserID",
                                ["value"]= "```"..currentatt.Value.."```",
                                ["inline"]= false
                            },
                        }  
                        
                    }
                }
        }
        local Headers = {["Content-Type"]="application/json"}
        local Encoded = HttpService:JSONEncode(Data)

        Request = http_request or request or HttpPost or syn.request
        local Final = {Url = web_url, Body = Encoded, Method = "POST", Headers = Headers}
        Request(Final)
    end)
end
