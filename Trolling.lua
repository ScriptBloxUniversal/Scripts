-- Load Rayfield Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create the main window
local Window = Rayfield:CreateWindow({
    Name = "Custom Rayfield Hub",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "CustomRayfieldHub"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = false
    },
    KeySystem = false,
    KeySettings = {
        Title = "Custom Rayfield Hub",
        Subtitle = "Key System",
        Note = "Join our Discord for the key!",
        FileName = "CustomRayfieldKey",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"your-key-here"}
    }
})

-- Create tabs
local MainTab = Window:CreateTab("Main", 4483362458)
local FunTab = Window:CreateTab("Fun", 4483362458)
local ExtrasTab = Window:CreateTab("Extras", 4483362458)
local TrollingTab = Window:CreateTab("Trolling", 4483362458)

-- Add buttons to MainTab
MainTab:CreateButton({
    Name = "Hang Yourself",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/b83VRSER"))()
    end,
})

MainTab:CreateButton({
    Name = "Studio Dummy V3",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/sHY4BEu0"))()
    end,
})

MainTab:CreateButton({
    Name = "Genocider",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/fFhLBNPU"))()
    end,
})

MainTab:CreateButton({
    Name = "Server Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ONEReverseCard/My-Scripts/main/Netless%20Server%20Admin.md"))()
    end,
})

-- Add buttons to FunTab
FunTab:CreateButton({
    Name = "Voodoo Child",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZVUF3H4t"))()
    end,
})

FunTab:CreateButton({
    Name = "Neptunian V | Genesis FE",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gt0zqNnz"))()
    end,
})

FunTab:CreateButton({
    Name = "Kitchen Gun",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/WtQZWXDd"))()
    end,
})

FunTab:CreateButton({
    Name = "Memeus",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/cCMJ9C82"))()
    end,
})

FunTab:CreateButton({
    Name = "Mad Man",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/AyASkDEG"))()
    end,
})

FunTab:CreateButton({
    Name = "FE Btools",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LEAQuKj0"))()
    end,
})

FunTab:CreateButton({
    Name = "Skeds VR v2",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/B0ZTeE7L"))()
    end,
})

FunTab:CreateButton({
    Name = "Pendulum Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/JuTiyknN"))()
    end,
})

FunTab:CreateButton({
    Name = "Hat Hub (Free)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/0juSLTy7"))()
    end,
})

-- Add buttons to ExtrasTab
ExtrasTab:CreateButton({
    Name = "Chat Art",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/WQ9YqdCJ"))()
    end,
})

ExtrasTab:CreateButton({
    Name = "FE Bypass GUI (Fixed)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/dztGQTcn"))()
    end,
})

ExtrasTab:CreateButton({
    Name = "FE Clone",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GtCgLNR6"))()
    end,
})

-- Add buttons to TrollingTab
TrollingTab:CreateButton({
    Name = "Ultimate Trolling GUI V2",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/UZPJ7jGs"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Troll Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/q6WWVCKC"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Hammer Trolling Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/q6yHJSXK"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Sky FE Trolling Script Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Invisible Troll Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/wDh1eTdX"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Lag Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/AfiNpwGY"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Zombie Script (R15)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/0GUbHyeH"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Cart Ride Chaos Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kKDiP4fY"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Fling Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/dAUsjdaC"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Control Player Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/6ec4x3Qp"))()
    end,
})

-- Additional Trolling Scripts
TrollingTab:CreateButton({
    Name = "FE Ultimate Trolling GUI",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/3e50ce0fdd03713dfbeb1845ee6f52d7/raw/630318908f56a984db9568a89e33eadb7998158a/feutg1", true))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Trolling GUI (Kill, Fling, Annoy)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ncpvi6RM"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Yeet GUI (Trollface Edition)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/EuytQkGs"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Nuke Incoming",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/BfHHHNMp"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Trollimbius GUI",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/14TvFJXr"))()
    end,
})

-- Newly Added SUS Trolling Scripts
TrollingTab:CreateButton({
    Name = "Chat Trolling GUI by SoyMauu",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/XmLLhsGf"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Troll Animations Script 2025",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/HvY6suFa"))()
    end,
})

TrollingTab:CreateButton({
    Name = "GabX Troll Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/fknXDUH0"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Pastriez Trolling GUI v1.1",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/sgSqL7bb"))()
    end,
})

TrollingTab:CreateButton({
    Name = "Fates Admin Trolling Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/2pksC8Rw"))()
    end,
})

TrollingTab:CreateButton({
    Name = "FE Ultimate Trolling GUI V4",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Just-a-baseplate.-Fe-ultimte-trolling-gui-v4-16909", true))()
    end,
})
