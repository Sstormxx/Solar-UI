local Solar = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sstormxx/Solar-UI/refs/heads/main/UI.lua"))()

local Window = Solar:CreateWindow({
    Name = "My Script"
})

local MainTab = Window:CreateTab({
    Name = "Main",
    Icon = "7733970523"
})

MainTab:CreateSection("Player Mods")

local CreateToggle = MainTab:CreateToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(v)
    -- Code here
    end
})

MainTab:CreateSlider({
    Name = "Slider",
    Min = 50,
    Max = 300,
    Default = 50,
    Callback = function(v)
    -- Code here
    end
})

MainTab:CreateDropdown({
    Name = "Dropdown",
    Options = {"A", "B", "C"},
    Default = "A",
    Callback = function(loc)
    -- Code here
    end
})

MainTab:CreateButton({
    Name = "Button",
    Callback = function()
    -- Code here
    end
})

local SettingsTab = Window:CreateTab({
    Name = "Settings",
    Icon = "7733955511"
})

MainTab:CreateKeybind({
    Name = "Panic Key",
    Default = Enum.KeyCode.P,
    Callback = function()
    -- Code here
    end
})

MainTab:CreateInput({
    Name = "Webhook URL",
    Placeholder = "https://discord.com/api/webhooks/...",
    Callback = function(url)
    -- Code here
    end
})

MainTab:CreateLabel({
    Text = "This is a Label",
    Color = Color3.fromRGB(150, 150, 150),
    Size = 12
})

| Category   | Function                | Purpose                  | Parameters                                                                      | Returns                                             |
| ---------- | ----------------------- | ------------------------ | ------------------------------------------------------------------------------- | --------------------------------------------------- |
| **Global** | `Solar:CreateWindow()`  | Create main UI window    | `{Name: string}`                                                                | `Window` object                                     |
| **Global** | `Solar:Notify()`        | Show notification        | `{Title: string, Content: string, Duration: number}`                            | `void`                                              |
| **Window** | `Window:CreateTab()`    | Create navigation tab    | `{Name: string, Icon: string}`                                                  | `Tab` object                                        |
| **Tab**    | `Tab:CreateSection()`   | Create group divider     | `name: string`                                                                  | `void`                                              |
| **Tab**    | `Tab:CreateButton()`    | Create clickable button  | `{Name: string, Callback: function}`                                            | `Frame`                                             |
| **Tab**    | `Tab:CreateToggle()`    | Create on/off switch     | `{Name: string, Default: boolean, Callback: function}`                          | `{Set: function, Get: function}`                    |
| **Tab**    | `Tab:CreateSlider()`    | Create value slider      | `{Name: string, Min: number, Max: number, Default: number, Callback: function}` | `{Set: function, Get: function}`                    |
| **Tab**    | `Tab:CreateDropdown()`  | Create selection menu    | `{Name: string, Options: table, Default: string, Callback: function}`           | `{Set: function, Get: function, Refresh: function}` |
| **Tab**    | `Tab:CreateInput()`     | Create text input        | `{Name: string, Placeholder: string, Default: string, Callback: function}`      | `{Set: function, Get: function}`                    |
| **Tab**    | `Tab:CreateKeybind()`   | Create keyboard shortcut | `{Name: string, Default: Enum.KeyCode, Callback: function}`                     | `{Set: function, Get: function}`                    |
| **Tab**    | `Tab:CreateLabel()`     | Create static text       | `{Text: string, Color: Color3, Size: number, Bold: boolean, Alignment: Enum}`   | `{Set: function, Get: function}`                    |
| **Tab**    | `Tab:CreateParagraph()` | Create titled text block | `{Title: string, Content: string}`                                              | `{SetTitle: function, SetContent: function}`        |
