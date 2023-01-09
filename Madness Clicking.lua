loadstring(game:HttpGet('https://pastebin.com/d95pnWqy',true))()

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

getgenv().autoTap = false;
getgenv().autoRebirth = false;
getgenv().auto2xClicks = true;
getgenv().auto2xPetXp = false;
getgenv().auto2xGems = false;

local remotePath = game:GetService("ReplicatedStorage").Events

function doTap()
    spawn(function()
        while getgenv().autoTap == true do
            remotePath.ClickEvent:FireServer()
            wait()
        end
    end)
end

function worldtp(world)
    spawn(function()
        if game:GetService("Workspace").Portals.TeleportSpots[world] then
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            plyr.CFrame = game:GetService("Workspace").Portals.TeleportSpots[world].CFrame
        end
    end)
end

function bossTp(boss)
    spawn(function()
        if game:GetService("Workspace").Map.Bosses.Zone[boss] then
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            plyr.CFrame = game:GetService("Workspace").Map.Bosses.Zone[boss].CFrame
        end
    end)
end

function autoRebirth(rebirthAmount)
    spawn(function ()
        while getgenv().autoRebirth == true do
            remotePath.Rebirth:InvokeServer(rebirthAmount)
            remotePath.UpdateAutoRebirth:InvokeServer(rebirthAmount)
            wait()
        end      
    end)
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Madness Clicking V1", "BloodTheme")

local Click = Window:NewTab("Auto Clicker")
    local ClickSection = Click:NewSection("Auto Click")
    ClickSection:NewToggle("Auto Clicker", "Clicks For You",function(bool)
    getgenv().autoTap = bool
    if bool then
        doTap();
    end
end)

local egg = Window:NewTab("Egg")
    local eggSection = egg:NewSection("Egg")

    local eggs;
    eggSection:NewDropdown("Select Egg", "Choose The Egg You Want To Hatch", {"Desert","Fairy","Jungle","Magic","Pirate","Scientific","Winter","Spooky","Alien","Youtuber","Christmas","Magma","Common","ImposterRobux","Robux","Crystal","Rare","Secret"}, function(value)
        eggs = value;
    end)

    eggSection:NewToggle("Open 1 Egg", "Auto Opens 1 Selected Egg", function(v)
    
    getgenv().autoclick = v
    while true do
        if not getgenv().autoclick then return end
            if eggs == "Desert" then
                local args = {[1] = "Desert",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Fairy" then
                local args = {[1] = "Fairy",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Jungle" then
                local args = {[1] = "Jungle",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Magic" then
                local args = {[1] = "Magic",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Pirate" then
                local args = {[1] = "Pirate",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Scientific" then
                local args = {[1] = "Scientific",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Winter" then
                local args = {[1] = "Winter",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Spooky" then
                local args = {[1] = "Spooky",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Alien" then
                local args = {[1] = "Alien",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Youtuber" then
                local args = {[1] = "Youtuber",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Christmas" then
                local args = {[1] = "Christmas",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Magma" then
                local args = {[1] = "Magma",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Common" then
                local args = {[1] = "Common",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "ImposterRobux" then
                local args = {[1] = "ImposterRobux",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Robux" then
                local args = {[1] = "Robux",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Crystal" then
                local args = {[1] = "Crystal",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Rare" then
                local args = {[1] = "Rare",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            else if eggs == "Secret" then
                local args = {[1] = "Secret",[2] = "Buy1"}
                remotePath.BuyEgg:InvokeServer(unpack(args))
            wait(2)
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
        end
    end
    end
end)

local potionUpgrades = Window:NewTab("Potion Upgrades")
    local potionUpgradeSection = potionUpgrades:NewSection("Potion Upgrades Very Buggy")
    local potions;
    potionUpgradeSection:NewDropdown("Select Potion Upgrade","Select Potion", {"2xClicks","2xGems","2xPetXp"},function (value)
        potions = value;
    end)
    potionUpgradeSection:NewButton("Purchase Upgrade", "Buys Potion Upgrades",function (v)
        getgenv().autoclick = v
        while true do
            if not getgenv().auto2xClicks then return end
            if potions == "2xClicks" then
                local args = {[1] = "2xClicks",[2] = "Buy1"}
                remotePath.PotionUpgrade:InvokeServer(unpack(args))
                local args = {[1] = "UpgradesUI"}
                remotePath.FetchClientData:InvokeServer(unpack(args))
                local args = {[1] = "ChangeStats"}
                remotePath.FetchClientData:InvokeServer(unpack(args))
            wait(2)
            elseif potions == "2xGems" then
                local args = {[1] = "2xGems",[2] = "Buy1"}
                remotePath.PotionUpgrade:InvokeServer(unpack(args))
                local args = {[1] = "UpgradesUI"}
                remotePath.FetchClientData:InvokeServer(unpack(args))
                local args = {[1] = "ChangeStats"}
                remotePath.FetchClientData:InvokeServer(unpack(args))
            wait(2)
            elseif potions == "2xPetXp" then
                local args = {[1] = "2xPetXp",[2] = "Buy1"}
                remotePath.PotionUpgrade:InvokeServer(unpack(args))
                local args = {[1] = "UpgradesUI"}
                remotePath.FetchClientData:InvokeServer(unpack(args))
                local args = {[1] = "ChangeStats"}
                remotePath.FetchClientData:InvokeServer(unpack(args))
            wait(2)
            end
        end
end)

local bossTeleport = Window:NewTab("Boss Teleport")
    local bossSection = bossTeleport:NewSection("Boss Teleport")
    local boss;
    bossSection:NewDropdown("Select Boss Arena", "Part = Main Area", {"Part"},function (value)
        boss = value;
    end)
    bossSection:NewButton("Boss Teleport", "Teleports You To The Boss",function()
        if boss then
            bossTp(boss)
        end
end)

local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
    local Teleporter;
    TeleportSection:NewDropdown("Select Area", "Choose The Area You Want To Teleport To", {"Main","Fairy","Jungle","Laboratory","Pirate","Winter","Magic","Desert","SpookyLand","Alien","Rebirth","Youtuber","Christmas","Magma",},function (value)
        Teleporter = value;
    end)

    TeleportSection:NewButton("Teleport","Teleports",function ()
    if Teleporter then
        worldtp(Teleporter)
    end
end)

local Rebirth = Window:NewTab("Auto Rebirth")
    local rebirthSection = Rebirth:NewSection("Auto Rebirth")
    local selectedRebirths;
    rebirthSection:NewDropdown("Select Rebirth", "Choose The Amount You Want To Rebirth", {1,5,15,25,50,100,500,1000,2500,5000,10000,25000,50000,100000,250000,500000,1000000,2000000,5000000,10000000,20000000,50000000,100000000,250000000,500000000,1000000000,2000000000,5000000000,10000000000,50000000000,100000000000,200000000000, 500000000000,1000000000000,2000000000000,5000000000000,10000000000000,20000000000000,50000000000000,100000000000000,250000000000000,500000000000000,750000000000000,1000000000000000,5000000000000000,10000000000000000,20000000000000000,50000000000000000,1E+17,5E+17,1E+18,2E+18,5E+18,1E+19,2E+19,5E+19,1E+20,2E+20,5E+20,1E+21,2.5E+21,5E+21,1E+22,5E+22,1E+23,2E+23,5E+23,1E+24,2E+24,5E+24},function (value)
    selectedRebirths = value;
    end)
    rebirthSection:NewToggle("Auto Rebirth", "Rebirths For You",function (bool)
        getgenv().autoRebirth = bool
        if bool and selectedRebirths then
        autoRebirth(selectedRebirths);
    end
end)

local Misc = Window:NewTab("Misc")
    local MiscSection = Misc:NewSection("Misc")
    MiscSection:NewSlider("Walkspeed", "Changes Walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    MiscSection:NewSlider("JumpPower", "Changes Jump Height", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    MiscSection:NewButton("Rejoin Server", "Rejoins The Server", function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end)

    MiscSection:NewKeybind("Minimize UI", "Hides UI", Enum.KeyCode.F, function()
        Library:ToggleUI()
end)

local Credits = Window:NewTab("Credits")
    local creditsSection = Credits:NewSection("RyanR#8147")
    Credits:NewSection("Contact Me On Discord")
    Credits:NewSection("If Something Stops Working")