repeat wait() until game:IsLoaded()
loadstring(game:HttpGet'https://github.com/sannin9000/scripts/raw/main/Stand%20Upright%20Bypass.lua')()
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Loco-CTO/UI-Library/main/VisionLibV2/source.lua'))()

local Window = Library:Create({
	Name = "Stand Upright Script", -- String
	Footer = "Loading...", -- String
	ToggleKey = Enum.KeyCode.RightControl, -- Enum.KeyCode
	LoadedCallback = function()
		-- Function
	end,
})
--configs!!
--_G.autoOrn

local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid
local HumanoidRootPart = Character.HumanoidRootPart

local doquest
local farmmob
local boss
local randomcount = 0

local None = 0
local Strong = 0
local Tough = 0
local Powerful = 0
local Enraged = 0
local Manic = 0
local Godly = 0
local Daemon = 0
local Invincible = 0
local GC = 0
local Cheerful = 0
local Sloppy = 0
local Tragic = 0
local Lethargic = 0
local Legendary = 0

local cNone = "None : "..""..None
local cStrong = "Strong : "..""..Strong
local cTough = "Tough : "..""..Tough
local cPowerful = "Powerful : "..""..Powerful
local cEnraged = "Enraged : "..""..Enraged
local cManic = "Manic : "..""..Manic
local cGodly = "Godly : "..""..Godly
local cDaemon = "Daemon : "..""..Daemon
local cInvincible = "Invincible : "..""..Invincible
local cGC = "Glass Cannon : "..""..GC
local cSloppy = "Sloppy : "..""..Sloppy
local cTragic = "Tragic : "..""..Tragic
local cLethargic = "Lethargic : "..""..Lethargic
local cLegendary = "Legendary : "..""..Legendary


function punch()
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer() 
    end)
end


function summon()
    pcall(function()
        if Character.Stand.UpperTorso.Transparency == 1 then
            Character.StandEvents.Summon:FireServer()
        end
    end)
end

function pressplay()
    pcall(function()
        local Button = game:GetService("Players").LocalPlayer.PlayerGui.MenuGUI.Play
        local events = { "MouseButton1Click", "MouseButton1Down", "Activated" }
        for i, v in next, events do firesignal(Button[v]) end
    end)
end

function checklvl()
    pcall(function()
        local lvl = LocalPlayer.Data.Level 
        if lvl.Value < 25 then
            farmmob = "Jotaro Part 4"
        elseif lvl.Value >= 25 and lvl.Value < 30 then
            doquest = "Joseph Joestar"
            farmmob = "Dio Over Heaven"
        elseif lvl.Value >= 30 and lvl.Value < 40 then
            doquest = "Okayasu"
            farmmob = "Yoshikage Kira"
        elseif lvl.Value >= 40 and lvl.Value < 50 then
            doquest = "Josuke"
            farmmob = "Angelo"
        elseif lvl.Value >= 50 and lvl.Value < 65 then
            doquest = "Rohan"
            farmmob = "Alien"
        elseif lvl.Value >= 65 and lvl.Value < 75 then
            doquest = "DIO"
            farmmob = "Jotaro Part 4"
        elseif lvl.Value >= 75 and lvl.Value < 90 then
            doquest = "Muhammed Avdol"
            farmmob = "Kakyoin"
        elseif lvl.Value >= 90 and lvl.Value < 130 then
            doquest = "Giorno"
            farmmob = "Jungle Bandit"
        elseif lvl.Value >= 130 and lvl.Value < 300 then
            doquest = "Zeppeli"
            farmmob = "Sewer Vampire"
        elseif lvl.Value >= 300 then
            doquest = "Young Joseph"
            farmmob = "Pillerman"
        end
    end)
end

function PickOrnament()
    pcall(function()
        local orn = 0
	pressplay()
        for i,v in pairs(game:GetService("Workspace").Items:GetChildren()) do
            if string.find(v.Name,"Ornament") then
                orn = orn + 1
                HumanoidRootPart.CFrame = v.Handle.CFrame
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
            end
        end 
        if orn == 0 then
            hopserver()
        end
    end)
end

function lair(lvl)
    pcall(function()
        if lvl == 200 then
            for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
                if v.Name == "i_stabman" then
                    if v.Head.Main.Text.Text == "i_stabman [Lvl. 200+]" then
                        v.Done:FireServer()
                    end
                end
            end
            boss = "Jotaro P6 [Dungeon]"
        elseif lvl == 15 then
            for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
                if v.Name == "i_stabman" then
                    if v.Head.Main.Text.Text == "i_stabman [Lvl. 15+]" then
                        v.Done:FireServer()
                    end
                end
            end
            boss = "Bad Gi Boss"
        elseif lvl == 40 then
            for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
                if v.Name == "i_stabman" then
                    if v.Head.Main.Text.Text == "i_stabman [Lvl. 40+]" then
                        v.Done:FireServer()
                    end
                end
            end
            boss = "Dio [Dungeon]"
        elseif lvl == 80 then
            for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
                if v.Name == "i_stabman" then
                    if v.Head.Main.Text.Text == "i_stabman [Lvl. 40+]" then
                        v.Done:FireServer()
                    end
                end
            end
            boss = "Homeless Lord"
        elseif lvl == 90 then
            for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
                if v.Name == "i_stabman" then
                    if v.Head.Main.Text.Text == "i_stabman [Lvl. 40+]" then
                        v.Done:FireServer()
                    end
                end
            end
            boss = "Homeless Lord"
        end
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if v.Name == "Boss" and v.Head.Display.Frame.t.Text == boss then
                summon()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)                      
                v.Humanoid.Health = 0
                punch()
            end
        end
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
                attcount()
                updatelabel()
            end
        else
            game.Players.LocalPlayer:Kick("ได้รีเจ้นละไอเวร!!!")
        end
    end)
end

function farm()
    pcall(function()
        checklvl()
        local tar = nil
        for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
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
                HumanoidRootPart.CFrame = CFrame.new(11953.5244, 1.13030577, -4497.03027, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            end
        end
        HumanoidRootPart.CFrame = tar.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
        punch()
    end)
end

function pick(a)
    pcall(function()
        local toosl = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(a)
        toosl.Parent = game:GetService("Players").LocalPlayer.Character
    end)
end


function attcount()
    pcall(function()
        if currentatt.Value == "None" then
            None = None + 1
        elseif currentatt.Value == "Strong" then
            Strong = Strong + 1
        elseif currentatt.Value == "Tough" then
            Tough = Tough + 1
        elseif currentatt.Value == "Powerful" then
            Powerful = Powerful + 1
        elseif currentatt.Value == "Enrage" then
            Enraged = Enraged + 1
        elseif currentatt.Value == "Manic" then
            Manic = Manic + 1
        elseif currentatt.Value == "Godly" then
            Godly = Godly + 1
        elseif currentatt.Value == "Daemon" then
            Daemon = Daemon + 1
        elseif currentatt.Value == "Invincible" then
            Invincible = Invincible + 1
        elseif currentatt.Value == "Legendary" then
            Legendary = Legendary + 1
        elseif currentatt.Value == "Cheerful" then
            Cheerful = Cheerful + 1
        elseif currentatt.Value == "Tragic" then
            Tragic = Tragic + 1
        elseif currentatt.Value == "Lethargic" then
            Lethargic = Lethargic + 1
        elseif currentatt.Value == "Sloppy" then
            Sloppy = Sloppy + 1
        elseif currentatt.Value == "Glass Cannon" then
            GC = GC + 1
        end
    end)
end

function autobuyif0(name)
    pcall(function()
        wait(1)
        local amount = 0
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == name then
                amount = amount +1
            end
        end
        if amount == 0 and name == "Stand Arrow" then
            local args = {
                [1] = "MerchantAU",
                [2] = "Option3"
            }
                    
            game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
        elseif amount == 0 and name == "Rokakaka" then
            if amount == 0 then
                local args = {
                    [1] = "MerchantAU",
                    [2] = "Option1"
                }
                
                game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
            end
        end
    end)
end

local Tab = Window:Tab({
	Name = "Main", -- String
	Color = Color3.new(1, 0, 0) -- Color3
})

local farmSection = Tab:Section({
	Name = "Auto Farm" -- String
})
local Autofarm = farmSection:Toggle({
	Name = "Auto Farm", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.Farm = false
        else
            _G.Farm = true
            while _G.Farm == true do
                wait()
                farm()
            end
        end
	end
})
local lairSection = Tab:Section({
	Name = "Auto Lair" -- String
})

local lair15 = lairSection:Toggle({
	Name = "Lair lvl.15", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.lair15 = false
        else
            _G.lair15 = true
            while _G.lair15 == true do
                wait()
                lair(15)
            end
        end
	end
})

local lair40 = lairSection:Toggle({
	Name = "Lair lvl.40", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.lair40 = false
        else
            _G.lair40 = true
            while _G.lair40 == true do
                wait()
                lair(40)
            end
        end
	end
})

local lair80 = lairSection:Toggle({
	Name = "Lair lvl.80", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.lair80 = false
        else
            _G.lair80 = true
            while _G.lair80 == true do
                wait()
                lair(80)
            end
        end
	end
})

local lair200 = lairSection:Toggle({
	Name = "Lair lvl.200", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.lair200 = false
        else
            _G.lair200 = true
            while _G.lair200 == true do
                wait()
                lair(200)
            end
        end
	end
})

local miscSection = Tab:Section({
    Name = "Misc"
})

local dropreqium = miscSection:Toggle({
	Name = "Auto Drop Reqium Arrow", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.dropreqium = false
        else
            _G.dropreqium = true
            while _G.dropreqium == true do
                wait()
                drop("Requiem Arrow")
            end
        end
	end
})

local pickorn = miscSection:Toggle({
	Name = "Auto Pick Ornament (Hop Server)", -- String
	Default = _G.autoOrn, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.Ornament = false
        else
            _G.Ornament = true
            while _G.Ornament == true do
                wait()
                PickOrnament()
            end
        end
	end
})

local antiafk = miscSection:Toggle({
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

local standTab = Window:Tab({
	Name = "Stand", -- String
	Color = Color3.new(0, 0, 1) -- Color3
})
local standSection = standTab:Section({
	Name = "Auto Stand" -- String
})

local autobuy = standSection:Toggle({
	Name = "Auto Buy Stand Arrow + Rokakaka", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.autobuy = false
        else
            _G.autobuy = true
            while _G.autobuy == true do
                wait()
                autobuyif0("Stand Arrow")
                autobuyif0("Rokakaka")
            end
        end
	end
})

local autoarrow = standSection:Toggle({
	Name = "Auto Find Legendary [Stand Arrow]", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.autoleg = false
        else
            _G.autoleg = true
            while _G.autoleg == true do
                wait()
                Randomleg("Stand Arrow")
            end
        end
	end
})

local autoarrow = standSection:Toggle({
	Name = "Auto Find Legendary [Charged Arrow]", -- String
	Default = false, -- Boolean
	Callback = function(Bool) 
        if Bool == false then
            _G.autolegc = false
        else
            _G.autolegc = true
            while _G.autolegc == true do
                wait()
                Randomleg("Charged Arrow")
            end
        end
	end  
})
local crandomcount = "Used Arrow: "..""..randomcount

local count2Section = standTab:Section({
	Name = "Count Arrow" -- String
})
local Label = count2Section:Label({
	Name = crandomcount, -- String
})
local countSection = standTab:Section({
	Name = "Count Attribute" -- String
})


local Label1 = countSection:Label({
	Name = cNone, -- String
})
local Label2 = countSection:Label({
	Name = cStrong, -- String
})
local Label3 = countSection:Label({
	Name = cTough, -- String
})
local Label4 = countSection:Label({
	Name = cSloppy, -- String
})
local Label5 = countSection:Label({
	Name = cPowerful, -- String
})
local Label6 = countSection:Label({
	Name = cEnraged, -- String
})
local Label7 = countSection:Label({
	Name = cManic, -- String
})
local Label8 = countSection:Label({
	Name = cLethargic, -- String
})
local Label9 = countSection:Label({
	Name = cGodly, -- String
})
local Label10 = countSection:Label({
	Name = cDaemon, -- String
})
local Label11 = countSection:Label({
	Name = cInvincible, -- String
})
local Label12 = countSection:Label({
	Name = cGC, -- String
})
local Label13 = countSection:Label({
	Name = cTragic, -- String
})
local Label14 = countSection:Label({
	Name = cLegendary, -- String
})

function hopserver()
    pcall(function()
        Time = 1 -- seconds
        repeat wait() until game:IsLoaded()
        wait(Time)
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
        end
    end)
end
 
function Teleport()
   while wait() do
       pcall(function()
           TPReturner()
           if foundAnything ~= "" then
               TPReturner()
           end
       end)
   end
end
 
-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()

function updatelabel()
    pcall(function()
        local cNone = "None : "..""..None
        local cStrong = "Strong : "..""..Strong
        local cTough = "Tough : "..""..Tough
        local cPowerful = "Powerful : "..""..Powerful
        local cEnraged = "Enraged : "..""..Enraged
        local cManic = "Manic : "..""..Manic
        local cGodly = "Godly : "..""..Godly
        local cDaemon = "Daemon : "..""..Daemon
        local cInvincible = "Invincible : "..""..Invincible
        local cGC = "Glass Cannon : "..""..GC
        local cSloppy = "Sloppy : "..""..Sloppy
        local cTragic = "Tragic : "..""..Tragic
        local cLethargic = "Lethargic : "..""..Lethargic
        local cLegendary = "Legendary : "..""..Legendary
        local crandomcount = "Used Arrow: "..""..randomcount
        Label1:SetName(cNone) -- String
        Label2:SetName(cStrong) -- String
        Label3:SetName(cTough) -- String
        Label4:SetName(cSloppy) -- String
        Label5:SetName(cPowerful) -- String
        Label6:SetName(cEnraged) -- String
        Label7:SetName(cManic) -- String
        Label8:SetName(cLethargic) -- String
        Label9:SetName(cGodly) -- String
        Label10:SetName(cDaemon) -- String
        Label11:SetName(cInvincible) -- String
        Label12:SetName(cGC) -- String
        Label13:SetName(cTragic) -- String
        Label14:SetName(cLegendary) -- String
        Label:SetName(crandomcount)
    end)
end
