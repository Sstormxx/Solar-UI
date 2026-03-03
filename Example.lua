local Solar = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sstormxx/Solar-UI/refs/heads/main/UI.lua"))()

-- Create Window
local Window = Solar:CreateWindow({
    Name = "My Script",
    LoadingTitle = "Solar Interface",
    Subtitle = "v2.1"
})

-- Customize Background
Window:SetBackground({
    Color = Color3.fromRGB(15, 15, 20),
    Gradient = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 25)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 25, 55))
    })
})

-- Create Tabs + Sections
local MainTab = Window:CreateTab({Name = "Main", Icon = "7733970523"})
MainTab:CreateSection("Configuration")

-- Main Tab Components
MainTab:CreateSection("Player Features")

MainTab:CreateToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(v) 
    -- Paste you're code
    end
})

MainTab:CreateSlider({
    Name = "Slider",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(v)
    -- Paste you're code
    end
})

MainTab:CreateDropdown({
    Name = "Dropdown",
    Options = {"A", "B", "C"},
    Default = "A",
    Callback = function(mode)
    -- Paste you're code
    end
})

MainTab:CreateButton({
    Name = "Button",
    Callback = function()
    -- Paste you're code
        Solar:Notify({
            Title = "Teleport",
            Content = "Clicked successfully!",
            Type = "Success",
            Duration = 3
        })
    end
})

MainTab:CreateInput({
    Name = "Input",
    Placeholder = "https://discord.com/api/webhooks/...",
    Callback = function(url)
    -- Paste you're code
    end
})

MainTab:CreateKeybind({
    Name = "Panic Key",
    Default = Enum.KeyCode.Delete,
    Callback = function()
    -- Paste you're code
    end
})

-- Notification
Solar:Notify({
    Title = "Loaded",
    Content = "Script loaded successfully!",
    Type = "Success",
    Duration = 5
})

| Category   | Function                 | Purpose              |
| ---------- | ------------------------ | -------------------- |
| **Global** | `Solar:Notify()`         | Show notifications   |
| **Window** | `Solar:CreateWindow()`   | Create main UI       |
| **Window** | `Window:SetBackground()` | Customize background |
| **Window** | `Window:CreateTab()`     | Create sidebar tab   |
| **Tab**    | `Tab:CreateSection()`    | Group divider        |
| **Tab**    | `Tab:CreateButton()`     | Clickable button     |
| **Tab**    | `Tab:CreateToggle()`     | On/Off switch        |
| **Tab**    | `Tab:CreateSlider()`     | Value slider         |
| **Tab**    | `Tab:CreateDropdown()`   | Selection menu       |
| **Tab**    | `Tab:CreateInput()`      | Text input box       |
| **Tab**    | `Tab:CreateKeybind()`    | Keyboard shortcut    |
| **Tab**    | `Tab:CreateLabel()`      | Static text          |
| **Tab**    | `Tab:CreateParagraph()`  | Titled text block    |
