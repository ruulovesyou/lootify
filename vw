



    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Magnate v1.0",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Magnate",
        LoadingSubtitle = "by Zrno",
        Theme = {
            TextColor = Color3.fromRGB(255, 255, 255),  -- White text color

            Background = Color3.fromRGB(15, 15, 15),     -- Dark matte background
            Topbar = Color3.fromRGB(25, 25, 25),         -- Slightly lighter dark for the top bar
            Shadow = Color3.fromRGB(10, 10, 10),         -- Dark shadow for subtle depth

            NotificationBackground = Color3.fromRGB(15, 15, 15), -- Dark notification background
            NotificationActionsBackground = Color3.fromRGB(200, 200, 200), -- Light gray for notification actions

            TabBackground = Color3.fromRGB(50, 50, 50),    -- Matte black tab background
            TabStroke = Color3.fromRGB(60, 60, 60),        -- Dark border for tabs
            TabBackgroundSelected = Color3.fromRGB(70, 70, 70),  -- Slightly lighter selected tab background
            TabTextColor = Color3.fromRGB(255, 255, 255),   -- White text for the tab
            SelectedTabTextColor = Color3.fromRGB(255, 255, 255), -- White text for selected tab

            ElementBackground = Color3.fromRGB(25, 25, 25),   -- Darker background for elements
            ElementBackgroundHover = Color3.fromRGB(35, 35, 35), -- Slightly lighter hover effect
            SecondaryElementBackground = Color3.fromRGB(15, 15, 15), -- Darkest secondary element background
            ElementStroke = Color3.fromRGB(40, 40, 40),       -- Dark border for elements
            SecondaryElementStroke = Color3.fromRGB(30, 30, 30), -- Lighter border for secondary elements

            SliderBackground = Color3.fromRGB(50, 138, 220),   -- Keep slider color as it is
            SliderProgress = Color3.fromRGB(50, 138, 220),     -- Keep slider progress color as it is
            SliderStroke = Color3.fromRGB(58, 163, 255),       -- Keep slider stroke color as it is

            ToggleBackground = Color3.fromRGB(25, 25, 25),     -- Dark background for toggle
            ToggleEnabled = Color3.fromRGB(0, 146, 214),       -- Bright blue when enabled
            ToggleDisabled = Color3.fromRGB(80, 80, 80),       -- Lighter gray when disabled
            ToggleEnabledStroke = Color3.fromRGB(0, 170, 255), -- Bright blue stroke when enabled
            ToggleDisabledStroke = Color3.fromRGB(100, 100, 100), -- Gray stroke when disabled
            ToggleEnabledOuterStroke = Color3.fromRGB(60, 60, 60), -- Dark outer stroke when enabled
            ToggleDisabledOuterStroke = Color3.fromRGB(50, 50, 50), -- Dark outer stroke when disabled

            DropdownSelected = Color3.fromRGB(40, 40, 40),    -- Dark background for selected dropdown
            DropdownUnselected = Color3.fromRGB(25, 25, 25),  -- Dark background for unselected dropdown

            InputBackground = Color3.fromRGB(25, 25, 25),     -- Dark input background
            InputStroke = Color3.fromRGB(60, 60, 60),         -- Dark stroke around the input
            PlaceholderColor = Color3.fromRGB(180, 180, 180)  -- Light gray for placeholder text
        },

        DisableRayfieldPrompts = true,
        DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

        ConfigurationSaving = {
            Enabled = true,
            FolderName = "Magnate", -- Create a custom folder for your hub/game
            FileName = "Magnate Hub"
        },

        Discord = {
            Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
            Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },

        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Untitled",
            Subtitle = "Key System",
            Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
            FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

 -- === MAIN TAB ===
local MainTab = Window:CreateTab("Main", 4483362458)
MainTab:CreateToggle({Name = "Hide Players Plots", CurrentValue = false, Flag = "HidePlots", Callback = function(v) end})
MainTab:CreateToggle({Name = "Hide Ore Notif", CurrentValue = false, Flag = "HideOre", Callback = function(v) end})
MainTab:CreateSection("Totem Options")
MainTab:CreateDropdown({Name = "Totem", Options = {"Rain", "Night"}, CurrentOption = {"Rain"}, MultipleOptions = false, Flag = "TotemSelect", Callback = function(v) end})
MainTab:CreateToggle({Name = "Auto Use Totem", CurrentValue = false, Flag = "AutoTotem", Callback = function(v) end})
MainTab:CreateButton({Name = "Refresh Character", Callback = function() end})

-- === TOGGLES TAB ===
local TogglesTab = Window:CreateTab("Toggles", 4483362458)


pcall(function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)


TogglesTab:CreateToggle({Name = "Auto Drill", CurrentValue = false, Flag = "AutoDrildl", Callback = function(v)
    if v then
        game:GetService('RunService'):BindToRenderStep("Drill", 0, function() 
        

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RollChest"):WaitForChild("RollCmd"):FireServer()

wait()

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RollChest"):WaitForChild("ClientConfirmed"):FireServer()

end)
    else
        game:GetService('RunService'):UnbindFromRenderStep("Drill")
    end
end})

TogglesTab:CreateToggle({Name = "Rebirht", CurrentValue = false, Flag = "AutoDrill", Callback = function(v)
    if v then
        game:GetService('RunService'):BindToRenderStep("Drill", 0, function() 
        
wait()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):WaitForChild("TryRebirth"):FireServer()


end)
    else
        game:GetService('RunService'):UnbindFromRenderStep("Drill")
    end
end})

TogglesTab:CreateToggle({Name = "auto roll", CurrentValue = false, Flag = "AutoDrills", Callback = function(v)
    if v then
        game:GetService('RunService'):BindToRenderStep("Drill", 0, function() 
        
wait()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Reward"):WaitForChild("RollDices"):FireServer()


end)
    else
        game:GetService('RunService'):UnbindFromRenderStep("Drill")
    end
end})

TogglesTab:CreateToggle({Name = "ivis", CurrentValue = false, Flag = "Inivs", Callback = function(v)
    if v then
        game:GetService('RunService'):BindToRenderStep("Drildl", 0, function() 
        
        for _, descendant in ipairs(game.Workspace:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.LocalTransparencyModifier = 1
            end
        end 
        end)
    else
       
        game:GetService('RunService'):UnbindFromRenderStep("Drill")
                for _, descendant in ipairs(game.Workspace:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.LocalTransparencyModifier = 0
            end
        end 
    end
end})





TogglesTab:CreateToggle({Name = "FPS", CurrentValue = false, Flag = "FPS", Callback = function(v)

  _G.Settings = {
        Players = {
            ["Ignore Me"] = true, -- Ignore your Character
            ["Ignore Others"] = true -- Ignore other Characters
        },
        Meshes = {
            Destroy = false, -- Destroy Meshes
            LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
        },
        Images = {
            Invisible = true, -- Invisible Images
            LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
            Destroy = false, -- Destroy Images
        },
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
    if not _G.Ignore then
        _G.Ignore = {} -- Add Instances to this table to ignore them (e.g. _G.Ignore = {workspace.Map, workspace.Map2})
    end
    if not _G.WaitPerAmount then
        _G.WaitPerAmount = 500 -- Set Higher or Lower depending on your computer's performance
    end
    if _G.SendNotifications == nil then
        _G.SendNotifications = false -- Set to false if you don't want notifications
    end
    if _G.ConsoleLogs == nil then
        _G.ConsoleLogs = false -- Set to true if you want console logs (mainly for debugging)
    end



    if not game:IsLoaded() then
        repeat
            task.wait()
        until game:IsLoaded()
    end
    if not _G.Settings then
        _G.Settings = {
            Players = {
                ["Ignore Me"] = true,
                ["Ignore Others"] = true,
                ["Ignore Tools"] = true
            },
            Meshes = {
                NoMesh = false,
                NoTexture = false,
                Destroy = false
            },
            Images = {
                Invisible = true,
                Destroy = false
            },
            Explosions = {
                Smaller = true,
                Invisible = false, -- Not recommended for PVP games
                Destroy = false -- Not recommended for PVP games
            },
            Particles = {
                Invisible = true,
                Destroy = false
            },
            TextLabels = {
                LowerQuality = false,
                Invisible = false,
                Destroy = false
            },
            MeshParts = {
                LowerQuality = true,
                Invisible = false,
                NoTexture = false,
                NoMesh = false,
                Destroy = false
            },
            Other = {
                ["FPS Cap"] = 60, -- Set this true to uncap FPS
                ["No Camera Effects"] = true,
                ["No Clothes"] = true,
                ["Low Water Graphics"] = true,
                ["No Shadows"] = true,
                ["Low Rendering"] = true,
                ["Low Quality Parts"] = true,
                ["Low Quality Models"] = true,
                ["Reset Materials"] = true,
                ["Lower Quality MeshParts"] = true
            }
        }
    end
    local Players, Lighting, StarterGui, MaterialService = game:GetService("Players"), game:GetService("Lighting"), game:GetService("StarterGui"), game:GetService("MaterialService")
    local ME, CanBeEnabled = Players.LocalPlayer, {"ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles"}
    local function PartOfCharacter(Instance)
        for i, v in pairs(Players:GetPlayers()) do
            if v ~= ME and v.Character and Instance:IsDescendantOf(v.Character) then
                return true
            end
        end
        return false
    end
    local function DescendantOfIgnore(Instance)
        for i, v in pairs(_G.Ignore) do
            if Instance:IsDescendantOf(v) then
                return true
            end
        end
        return false
    end
    local function CheckIfBad(Instance)
        if not Instance:IsDescendantOf(Players) and (_G.Settings.Players["Ignore Others"] and not PartOfCharacter(Instance) or not _G.Settings.Players["Ignore Others"]) and (_G.Settings.Players["Ignore Me"] and ME.Character and not Instance:IsDescendantOf(ME.Character) or not _G.Settings.Players["Ignore Me"]) and (_G.Settings.Players["Ignore Tools"] and not Instance:IsA("BackpackItem") and not Instance:FindFirstAncestorWhichIsA("BackpackItem") or not _G.Settings.Players["Ignore Tools"])--[[not PartOfCharacter(Instance)]] and (_G.Ignore and not table.find(_G.Ignore, Instance) and not DescendantOfIgnore(Instance) or (not _G.Ignore or type(_G.Ignore) ~= "table" or #_G.Ignore <= 0)) then
            if Instance:IsA("DataModelMesh") then
                if _G.Settings.Meshes.NoMesh and Instance:IsA("SpecialMesh") then
                    Instance.MeshId = ""
                end
                if _G.Settings.Meshes.NoTexture and Instance:IsA("SpecialMesh") then
                    Instance.TextureId = ""
                end
                if _G.Settings.Meshes.Destroy or _G.Settings["No Meshes"] then
                    Instance:Destroy()
                end
            elseif Instance:IsA("FaceInstance") then
                if _G.Settings.Images.Invisible then
                    Instance.Transparency = 1
                    Instance.Shiny = 1
                end
                if _G.Settings.Images.LowDetail then
                    Instance.Shiny = 1
                end
                if _G.Settings.Images.Destroy then
                    Instance:Destroy()
                end
            elseif Instance:IsA("ShirtGraphic") then
                if _G.Settings.Images.Invisible then
                    Instance.Graphic = ""
                end
                if _G.Settings.Images.Destroy then
                    Instance:Destroy()
                end
            elseif table.find(CanBeEnabled, Instance.ClassName) then
                if _G.Settings["Invisible Particles"] or _G.Settings["No Particles"] or (_G.Settings.Other and _G.Settings.Other["Invisible Particles"]) or (_G.Settings.Particles and _G.Settings.Particles.Invisible) then
                    Instance.Enabled = false
                end
                if (_G.Settings.Other and _G.Settings.Other["No Particles"]) or (_G.Settings.Particles and _G.Settings.Particles.Destroy) then
                    Instance:Destroy()
                end
            elseif Instance:IsA("PostEffect") and (_G.Settings["No Camera Effects"] or (_G.Settings.Other and _G.Settings.Other["No Camera Effects"])) then
                Instance.Enabled = false
            elseif Instance:IsA("Explosion") then
                if _G.Settings["Smaller Explosions"] or (_G.Settings.Other and _G.Settings.Other["Smaller Explosions"]) or (_G.Settings.Explosions and _G.Settings.Explosions.Smaller) then
                    Instance.BlastPressure = 1
                    Instance.BlastRadius = 1
                end
                if _G.Settings["Invisible Explosions"] or (_G.Settings.Other and _G.Settings.Other["Invisible Explosions"]) or (_G.Settings.Explosions and _G.Settings.Explosions.Invisible) then
                    Instance.BlastPressure = 1
                    Instance.BlastRadius = 1
                    Instance.Visible = false
                end
                if _G.Settings["No Explosions"] or (_G.Settings.Other and _G.Settings.Other["No Explosions"]) or (_G.Settings.Explosions and _G.Settings.Explosions.Destroy) then
                    Instance:Destroy()
                end
            elseif Instance:IsA("Clothing") or Instance:IsA("SurfaceAppearance") or Instance:IsA("BaseWrap") then
                if _G.Settings["No Clothes"] or (_G.Settings.Other and _G.Settings.Other["No Clothes"]) then
                    Instance:Destroy()
                end
            elseif Instance:IsA("BasePart") and not Instance:IsA("MeshPart") then
                if _G.Settings["Low Quality Parts"] or (_G.Settings.Other and _G.Settings.Other["Low Quality Parts"]) then
                    Instance.Material = Enum.Material.Plastic
                    Instance.Reflectance = 0
                end
            elseif Instance:IsA("TextLabel") and Instance:IsDescendantOf(workspace) then
                if _G.Settings["Lower Quality TextLabels"] or (_G.Settings.Other and _G.Settings.Other["Lower Quality TextLabels"]) or (_G.Settings.TextLabels and _G.Settings.TextLabels.LowerQuality) then
                    Instance.Font = Enum.Font.SourceSans
                    Instance.TextScaled = false
                    Instance.RichText = false
                    Instance.TextSize = 14
                end
                if _G.Settings["Invisible TextLabels"] or (_G.Settings.Other and _G.Settings.Other["Invisible TextLabels"]) or (_G.Settings.TextLabels and _G.Settings.TextLabels.Invisible) then
                    Instance.Visible = false
                end
                if _G.Settings["No TextLabels"] or (_G.Settings.Other and _G.Settings.Other["No TextLabels"]) or (_G.Settings.TextLabels and _G.Settings.TextLabels.Destroy) then
                    Instance:Destroy()
                end
            elseif Instance:IsA("Model") then
                if _G.Settings["Low Quality Models"] or (_G.Settings.Other and _G.Settings.Other["Low Quality Models"]) then
                    Instance.LevelOfDetail = 1
                end
            elseif Instance:IsA("MeshPart") then
                if _G.Settings["Low Quality MeshParts"] or (_G.Settings.Other and _G.Settings.Other["Low Quality MeshParts"]) or (_G.Settings.MeshParts and _G.Settings.MeshParts.LowerQuality) then
                    Instance.RenderFidelity = 2
                    Instance.Reflectance = 0
                    Instance.Material = Enum.Material.Plastic
                end
                if _G.Settings["Invisible MeshParts"] or (_G.Settings.Other and _G.Settings.Other["Invisible MeshParts"]) or (_G.Settings.MeshParts and _G.Settings.MeshParts.Invisible) then
                    Instance.Transparency = 1
                    Instance.RenderFidelity = 2
                    Instance.Reflectance = 0
                    Instance.Material = Enum.Material.Plastic
                end
                if _G.Settings.MeshParts and _G.Settings.MeshParts.NoTexture then
                    Instance.TextureID = ""
                end
                if _G.Settings.MeshParts and _G.Settings.MeshParts.NoMesh then
                    Instance.MeshId = ""
                end
                if _G.Settings["No MeshParts"] or (_G.Settings.Other and _G.Settings.Other["No MeshParts"]) or (_G.Settings.MeshParts and _G.Settings.MeshParts.Destroy) then
                    Instance:Destroy()
                end
            end
        end
    end

    coroutine.wrap(pcall)(function()
        if (_G.Settings["Low Water Graphics"] or (_G.Settings.Other and _G.Settings.Other["Low Water Graphics"])) then
            if not workspace:FindFirstChildOfClass("Terrain") then
                repeat
                    task.wait()
                until workspace:FindFirstChildOfClass("Terrain")
            end
            workspace:FindFirstChildOfClass("Terrain").WaterWaveSize = 0
            workspace:FindFirstChildOfClass("Terrain").WaterWaveSpeed = 0
            workspace:FindFirstChildOfClass("Terrain").WaterReflectance = 0
            workspace:FindFirstChildOfClass("Terrain").WaterTransparency = 0
            if sethiddenproperty then
                sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
            else
                warn("Your exploit does not support sethiddenproperty, please use a different exploit.")
            end

        end
    end)
    coroutine.wrap(pcall)(function()
        if _G.Settings["No Shadows"] or (_G.Settings.Other and _G.Settings.Other["No Shadows"]) then
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9e9
            Lighting.ShadowSoftness = 0
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", 2)
            else
                warn("Your exploit does not support sethiddenproperty, please use a different exploit.")
            end
        end
    end)
    coroutine.wrap(pcall)(function()
        if _G.Settings["Low Rendering"] or (_G.Settings.Other and _G.Settings.Other["Low Rendering"]) then
            settings().Rendering.QualityLevel = 1
            settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
        end
    end)
    coroutine.wrap(pcall)(function()
        if _G.Settings["Reset Materials"] or (_G.Settings.Other and _G.Settings.Other["Reset Materials"]) then
            for i, v in pairs(MaterialService:GetChildren()) do
                v:Destroy()
            end
            MaterialService.Use2022Materials = false
        end
    end)
    coroutine.wrap(pcall)(function()
        if _G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"]) then
            if setfpscap then
                if type(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])) == "string" or type(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])) == "number" then
                    setfpscap(tonumber(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])))
                    if _G.SendNotifications then
                    end
                    if _G.ConsoleLogs then
                        --warn("FPS Capped to " .. tostring(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])))
                    end
                elseif _G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"]) == true then
                    setfpscap(1e6)
                end
            else
                --warn("FPS Cap Failed")
            end
        end
    end)
    game.DescendantAdded:Connect(function(value)
        wait(_G.LoadedWait or 1)
        CheckIfBad(value)
    end)
    local Descendants = game:GetDescendants()
    local StartNumber = _G.WaitPerAmount or 500
    local WaitNumber = _G.WaitPerAmount or 500


    for i, v in pairs(Descendants) do
        CheckIfBad(v)
        if i == WaitNumber then
            task.wait()
            if _G.ConsoleLogs then
                print("Loaded " .. i .. "/" .. #Descendants)
            end
            WaitNumber = WaitNumber + StartNumber
        end
    end
end})
