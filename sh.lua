local plr = game:GetService("Players").LocalPlayer
local Notification = require(game:GetService("ReplicatedStorage").Notification)
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    
    local function MakeDraggable(topbarobject, object)
        local Dragging = nil
        local DragInput = nil
        local DragStart = nil
        local StartPosition = nil
    
        local function Update(input)
            local Delta = input.Position - DragStart
            local pos =
                UDim2.new(
                    StartPosition.X.Scale,
                    StartPosition.X.Offset + Delta.X,
                    StartPosition.Y.Scale,
                    StartPosition.Y.Offset + Delta.Y
                )
            local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
            Tween:Play()
        end
    
        topbarobject.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    DragStart = input.Position
                    StartPosition = object.Position
    
                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                Dragging = false
                            end
                        end
                    )
                end
            end
        )
    
        topbarobject.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
                then
                    DragInput = input
                end
            end
        )
    
        UserInputService.InputChanged:Connect(
            function(input)
                if input == DragInput and Dragging then
                    Update(input)
                end
            end
        )
    end
    
    local library = {}
    
    function library:AddWindow(text,keybind)
        local bind = keybind or Enum.KeyCode.RightControl
        local ff = false
        local currenttab = ""
    
        local DoctorShiba = Instance.new("ScreenGui")
        DoctorShiba.Name = "UlLib"
        DoctorShiba.Parent = game.CoreGui
        DoctorShiba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = DoctorShiba
        Main.AnchorPoint = Vector2.new(0.5, 0.5)
        Main.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
        Main.BackgroundTransparency = 0.100
        Main.BorderSizePixel = 0
        Main.ClipsDescendants = true
        Main.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
        Main.Size = UDim2.new(0, 600, 0, 350)
    
        local Top = Instance.new("Frame")
        Top.Name = "Top"
        Top.Parent = Main
        Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Top.BackgroundTransparency = 1.000
        Top.BorderSizePixel = 0
        Top.Size = UDim2.new(0, 600, 0, 20)
    
        local Page = Instance.new("Frame")
        Page.Name = "Page"
        Page.Parent = Main
        Page.BackgroundColor3 = Color3.fromRGB(25, 23, 35)
        Page.BackgroundTransparency = 0.100
        Page.BorderSizePixel = 0
        Page.Size = UDim2.new(0, 125, 0, 350)
    
        local NameHub = Instance.new("TextLabel")
        NameHub.Name = "NameHub"
        NameHub.Parent = Page
        NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NameHub.BackgroundTransparency = 1.000
        NameHub.Position = UDim2.new(0.113333493, 0, 0, 0)
        NameHub.Size = UDim2.new(0, 110, 0, 20)
        NameHub.Font = Enum.Font.GothamSemibold
        NameHub.Text = text
        NameHub.TextColor3 = Color3.fromRGB(225, 0, 0)
        NameHub.TextSize = 11.000
        NameHub.TextXAlignment = Enum.TextXAlignment.Left
    
        local User = Instance.new("Frame")
        User.Name = "User"
        User.Parent = Page
        User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        User.BackgroundTransparency = 1.000
        User.Position = UDim2.new(0, 0, 0.8, 30)
        User.Size = UDim2.new(0, 125, 0, 40)
    
        local UserText = Instance.new("TextLabel")
        UserText.Name = "UserText"
        UserText.Parent = User
        UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UserText.BackgroundTransparency = 1.000
        UserText.Position = UDim2.new(0.354999989, 0, 0, 11)
        UserText.Size = UDim2.new(0, 80, 0, 20)
        UserText.Font = Enum.Font.Gotham
        UserText.Text = tostring(game.Players.LocalPlayer.Name) 
        spawn(function()
            while wait() do
                pcall(function()
                    wait(0.1) 
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 165, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 155, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 155, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 155)}
                    ):Play() 
                    wait(.5)
                end)
            end
        end)
        UserText.TextScaled = true
        UserText.TextSize = 11.000
        UserText.TextWrapped = true
        UserText.TextXAlignment = Enum.TextXAlignment.Left
    
        local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint.Parent = UserText
        UITextSizeConstraint.MaxTextSize = 11
    
        local UserImage = Instance.new("ImageLabel")
        UserImage.Name = "UserImage"
        UserImage.Parent = User
        UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
        UserImage.Position = UDim2.new(0, 10, 0, 9)
        UserImage.Size = UDim2.new(0, 25, 0, 25)
        UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
    
        local UserImageCorner = Instance.new("UICorner")
        UserImageCorner.CornerRadius = UDim.new(0, 100)
        UserImageCorner.Name = "UserImageCorner"
        UserImageCorner.Parent = UserImage
    
        local ScrollPage = Instance.new("ScrollingFrame")
        ScrollPage.Name = "ScrollPage"
        ScrollPage.Parent = Page
        ScrollPage.Active = true
        ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollPage.BackgroundTransparency = 1.000
        ScrollPage.BorderSizePixel = 0
        ScrollPage.Position = UDim2.new(0, 0, 0.086, 0)
        ScrollPage.Size = UDim2.new(0, 125, 0, 290)
        ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollPage.ScrollBarThickness = 0
        local PageList = Instance.new("UIListLayout")
        PageList.Name = "PageList"
        PageList.Parent = ScrollPage
        PageList.SortOrder = Enum.SortOrder.LayoutOrder
        PageList.Padding = UDim.new(0, 7)
    
        local PagePadding = Instance.new("UIPadding")
        PagePadding.Name = "PagePadding"
        PagePadding.Parent = ScrollPage
        PagePadding.PaddingTop = UDim.new(0, 5)
        PagePadding.PaddingLeft = UDim.new(0, 28)
    
        local TabFolder = Instance.new("Folder")
        TabFolder.Name = "TabFolder"
        TabFolder.Parent = Main
    
        MakeDraggable(Top,Main)
    
        local uihide = false
    
        UserInputService.InputBegan:Connect(function(input)
            if input.KeyCode == bind then
                if uihide == false then
                    uihide = true
                    Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
                else
                    uihide = false
                    Main:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.2,true)
                end
            end
        end)
    
        local uitab = {}
    
        function uitab:AddTab(text,image)
            local Image = image or 6023426915
    
            local PageButton = Instance.new("TextButton")
            PageButton.Name = "PageButton"
            PageButton.Parent = ScrollPage
            PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PageButton.BackgroundTransparency = 1.000
            PageButton.BorderSizePixel = 0
            PageButton.Position = UDim2.new(0.224000007, 0, 0.029787235, 0)
            PageButton.Size = UDim2.new(0, 97, 0, 20)
            PageButton.AutoButtonColor = false
            PageButton.Font = Enum.Font.GothamSemibold
            PageButton.Text = text
            PageButton.TextColor3 = Color3.fromRGB(225, 225, 225)
            PageButton.TextSize = 11.000
            PageButton.TextXAlignment = Enum.TextXAlignment.Left
            
            local PageImage = Instance.new("ImageLabel")
            PageImage.Name = "PageImage"
            PageImage.Parent = PageButton
            PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PageImage.BackgroundTransparency = 1.000
            PageImage.Position = UDim2.new(0, -20, 0, 3)
            PageImage.Size = UDim2.new(0, 15, 0, 15)
            PageImage.Image = "rbxassetid://"..tostring(Image)
    
            local MainTab = Instance.new("Frame")
            MainTab.Name = "MainTab"
            MainTab.Parent = TabFolder
            MainTab.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
            MainTab.BorderSizePixel = 0
            MainTab.Position = UDim2.new(0.208333328, 0, 0, 0)
            MainTab.Size = UDim2.new(0, 475, 0, 350)
            MainTab.Visible = false
    
            local ScrollTab = Instance.new("ScrollingFrame")
            ScrollTab.Name = "ScrollTab"
            ScrollTab.Parent = MainTab
            ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollTab.BackgroundTransparency = 1.000
            ScrollTab.BorderSizePixel = 0
            ScrollTab.Position = UDim2.new(0, 0, 0.057, 0)
            ScrollTab.Size = UDim2.new(0, 475, 0, 330)
            ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollTab.ScrollBarThickness = 3
    
            local TabList = Instance.new("UIListLayout")
            TabList.Name = "TabList"
            TabList.Parent = ScrollTab
            TabList.SortOrder = Enum.SortOrder.LayoutOrder
            TabList.Padding = UDim.new(0, 5)
    
            local TabPadding = Instance.new("UIPadding")
            TabPadding.Name = "TabPadding"
            TabPadding.Parent = ScrollTab
            TabPadding.PaddingLeft = UDim.new(0, 10)
            TabPadding.PaddingTop = UDim.new(0, 10)
    
            PageButton.MouseButton1Click:Connect(function()
                currenttab = MainTab.Name
                for i,v in next, TabFolder:GetChildren() do 
                    if v.Name == "MainTab" then
                        v.Visible = false
                    end
                end
                MainTab.Visible = true
    
                for i,v in next, ScrollPage:GetChildren() do 
                    if v:IsA("TextButton") then
                        TweenService:Create(
                            v,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(225, 225, 225)}
                        ):Play()
                    end
                    TweenService:Create(
                        PageButton,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,165,0)}
                    ):Play()
                end
            end)
    
            if ff == false then
                TweenService:Create(
                    PageButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255,165,0)}
                ):Play()
                for i,v in next, TabFolder:GetChildren() do 
                    if v.Name == "MainTab" then
                        v.Visible = false
                    end
                    MainTab.Visible = true
                end
                ff = true
            end
    
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 10)
                    ScrollTab.CanvasSize = UDim2.new(0,0,0,TabList.AbsoluteContentSize.Y + 30)
                end)
            end)
            
            local main = {}
            
            function main:AddButton(text,callback)
                local Button = Instance.new("TextButton")
    
                Button.Name = "Button"
                Button.Parent = ScrollTab
                Button.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                Button.BackgroundTransparency = 0.1
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(0, 455, 0, 30)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.Gotham
                Button.Text = text
                Button.TextColor3 = Color3.fromRGB(225, 225, 225)
                Button.TextSize = 11.000
                Button.TextWrapped = true
                
                local ButtonCorner = Instance.new("UICorner")
                ButtonCorner.Name = "ButtonCorner"
                ButtonCorner.CornerRadius = UDim.new(0, 5)
                ButtonCorner.Parent = Button
                
                Button.MouseEnter:Connect(function()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,165,0)}
                    ):Play()
                end)
                
                Button.MouseLeave:Connect(function()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(225, 225, 225)}
                    ):Play()
                end)
                
                Button.MouseButton1Click:Connect(function()
                    callback()
                    Button.TextSize = 0
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextSize = 11}
                    ):Play()
                end)
            end
            
            function main:AddToggle(text,config,callback)
                local ToggleImage = Instance.new("Frame")
                
                local Toggle = Instance.new("TextButton")
                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollTab
                Toggle.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                Toggle.BackgroundTransparency = 0.1
                Toggle.BorderSizePixel = 0
                Toggle.AutoButtonColor = false
                Toggle.Size = UDim2.new(0, 455, 0, 30)
                Toggle.Font = Enum.Font.SourceSans
                Toggle.Text = ""
                Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                Toggle.TextSize = 14.000
                
                local ToggleCorner = Instance.new("UICorner")
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Parent = Toggle
    
                local ToggleLabel = Instance.new("TextLabel")
                ToggleLabel.Name = "ToggleLabel"
                ToggleLabel.Parent = Toggle
                ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleLabel.BackgroundTransparency = 1.000
                ToggleLabel.Position = UDim2.new(0, 13, 0, 0)
                ToggleLabel.Size = UDim2.new(0, 410, 0, 30)
                ToggleLabel.Font = Enum.Font.Gotham
                ToggleLabel.Text = text
                ToggleLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                ToggleLabel.TextSize = 11.000
                ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(70, 68, 79)
                ToggleImage.Position = UDim2.new(0, 425, 0, 5)
                ToggleImage.BorderSizePixel = 0
                ToggleImage.Size = UDim2.new(0, 20, 0, 20)
                local ToggleImageCorner = Instance.new("UICorner")
                ToggleImageCorner.Name = "ToggleImageCorner"
                ToggleImageCorner.CornerRadius = UDim.new(0, 5)
                ToggleImageCorner.Parent = ToggleImage
    
                local ToggleImage2 = Instance.new("Frame")
                ToggleImage2.Name = "ToggleImage2"
                ToggleImage2.Parent = ToggleImage
                ToggleImage2.AnchorPoint = Vector2.new(0.5, 0.5)
                ToggleImage2.BackgroundColor3 = Color3.fromRGB(255,165,0)
                ToggleImage2.Position = UDim2.new(0, 10, 0, 10)
                ToggleImage2.Visible = false
    
                local ToggleImage2Corner = Instance.new("UICorner")
                ToggleImage2Corner.Name = "ToggleImageCorner"
                ToggleImage2Corner.CornerRadius = UDim.new(0, 5)
                ToggleImage2Corner.Parent = ToggleImage2
                
                Toggle.MouseEnter:Connect(function()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,165,0)}
                    ):Play()
                end)
    
                Toggle.MouseLeave:Connect(function()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(225, 225, 225)}
                    ):Play()
                end)
                if config == nil then config = false end
                local toggled = config or false
                Toggle.MouseButton1Click:Connect(function()
                    if toggled == false then
                        toggled = true
                        ToggleImage2.Visible = true
                        ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
                    else
                        toggled = false
                        ToggleImage2:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.1,true)
                        wait(0.1)
                        ToggleImage2.Visible = false
                    end
                    callback(toggled)
                end)
                
                if config == true then
                    ToggleImage2.Visible = true
                    ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
                    toggled = true
                    callback(toggled)
                end
            end
    
            function main:AddTextbox(text,holder,disappear,callback)
                local Textboxx = Instance.new("Frame")
                local TextboxxCorner = Instance.new("UICorner")
                local TextboxTitle = Instance.new("TextLabel")
                local Textbox = Instance.new("TextBox")
                local TextboxCorner = Instance.new("UICorner")
    
                Textboxx.Name = "Textboxx"
                Textboxx.Parent = ScrollTab
                Textboxx.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                Textboxx.Size = UDim2.new(0, 455, 0, 30)
    
                TextboxxCorner.CornerRadius = UDim.new(0, 5)
                TextboxxCorner.Name = "TextboxxCorner"
                TextboxxCorner.Parent = Textboxx
    
                TextboxTitle.Name = "TextboxTitle"
                TextboxTitle.Parent = Textboxx
                TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxTitle.BackgroundTransparency = 1.000
                TextboxTitle.Position = UDim2.new(0, 15, 0, 0)
                TextboxTitle.Size = UDim2.new(0, 300, 0, 30)
                TextboxTitle.Font = Enum.Font.Gotham
                TextboxTitle.Text = text
                TextboxTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextboxTitle.TextSize = 11.000
                TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
    
                Textbox.Name = "Textbox"
                Textbox.Parent = Textboxx
                Textbox.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
                Textbox.Position = UDim2.new(0, 310, 0, 5)
                Textbox.Size = UDim2.new(0, 140, 0, 20)
                Textbox.Font = Enum.Font.Gotham
                Textbox.Text = holder
                Textbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                Textbox.TextSize = 11.000
    
                Textbox.FocusLost:Connect(function()
                    if #Textbox.Text > 0 then
                        callback(Textbox.Text)
                    end
                    if disappear then
                        Textbox.Text = ""
                    else
                        Textbox.Text = holder
                    end
                end)
    
                TextboxCorner.Name = "TextboxCorner"
                TextboxCorner.CornerRadius = UDim.new(0, 5)
                TextboxCorner.Parent = Textbox
            end
    
            function main:AddDropdown(text,table,callback)
                local Dropdown = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local DropButton = Instance.new("TextButton")
                local Droptitle = Instance.new("TextLabel")
                local DropScroll = Instance.new("ScrollingFrame")
                local DropdownList = Instance.new("UIListLayout")
                local DropdownPadding = Instance.new("UIPadding")
                local DropImage = Instance.new("ImageLabel")
                
                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollTab
                Dropdown.Active = true
                Dropdown.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                Dropdown.ClipsDescendants = true
                Dropdown.Size = UDim2.new(0, 455, 0, 30)
                
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Dropdown
                
                DropButton.Name = "DropButton"
                DropButton.Parent = Dropdown
                DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropButton.BackgroundTransparency = 1.000
                DropButton.Size = UDim2.new(0, 455, 0, 30)
                DropButton.Font = Enum.Font.SourceSans
                DropButton.Text = ""
                DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropButton.TextSize = 14.000
                
                Droptitle.Name = "Droptitle"
                Droptitle.Parent = Dropdown
                Droptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Droptitle.BackgroundTransparency = 1.000
                Droptitle.Position = UDim2.new(0.0281690136, 0, 0, 0)
                Droptitle.Size = UDim2.new(0, 410, 0, 30)
                Droptitle.Font = Enum.Font.Gotham
                Droptitle.Text = text.." : "
                Droptitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                Droptitle.TextSize = 11.000
                Droptitle.TextXAlignment = Enum.TextXAlignment.Left
    
                DropImage.Name = "DropImage"
                DropImage.Parent = Dropdown
                DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropImage.BackgroundTransparency = 1.000
                DropImage.Position = UDim2.new(0, 425, 0, 5)
                DropImage.Rotation = 0
                DropImage.Size = UDim2.new(0, 20, 0, 20)
                DropImage.Image = "rbxassetid://5012539403"
                
                DropScroll.Name = "DropScroll"
                DropScroll.Parent = Droptitle
                DropScroll.Active = true
                DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropScroll.BackgroundTransparency = 1.000
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.new(-0.0317460336, 0, 1, 0)
                DropScroll.Size = UDim2.new(0, 455, 0, 70)
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
                DropScroll.ScrollBarThickness = 2
                
                DropdownList.Name = "DropdownList"
                DropdownList.Parent = DropScroll
                DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
                DropdownList.Padding = UDim.new(0, 5)
                
                DropdownPadding.Name = "DropdownPadding"
                DropdownPadding.Parent = DropScroll
                DropdownPadding.PaddingTop = UDim.new(0, 5)
    
                local isdropping = false
    
                for i,v in next,table do
                    local DropButton2 = Instance.new("TextButton")
    
                    DropButton2.Name = "DropButton2"
                    DropButton2.Parent = DropScroll
                    DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    DropButton2.BackgroundTransparency = 1.000
                    DropButton2.Size = UDim2.new(0, 455, 0, 30)
                    DropButton2.AutoButtonColor = false
                    DropButton2.Font = Enum.Font.Gotham
                    DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
                    DropButton2.TextSize = 11.000
                    DropButton2.Text = tostring(v)
    
                    DropButton2.MouseEnter:Connect(function()
                        TweenService:Create(
                            DropButton2,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255,165,0)}
                        ):Play()
                    end)
                    DropButton2.MouseLeave:Connect(function()
                        TweenService:Create(
                            DropButton2,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(225, 225, 225)}
                        ):Play()
                    end)
    
                    DropButton2.MouseButton1Click:Connect(function()
                        TweenService:Create(
                            Dropdown,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        Droptitle.Text =  text.." : "..tostring(v)
                        callback(v)
                        isdropping = not isdropping
                        DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                    end)
                end
    
                DropButton.MouseButton1Click:Connect(function()
                    if isdropping == false then
                        isdropping = true
                        TweenService:Create(
                            Dropdown,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 100)}
                        ):Play()
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = -180}
                        ):Play()
                        DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                    else
                        isdropping = false
                        TweenService:Create(
                            Dropdown,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                    end
                end)
                DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
    
                local drop = {}
    
                function drop:Clear()
                    Droptitle.Text = tostring(text).." :"
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 455, 0, 30)} 
                    ):Play()
                    isdropping = false
                    for i, v in next, DropScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
                function drop:Add(t)
                    local DropButton2 = Instance.new("TextButton")
    
                    DropButton2.Name = "DropButton2"
                    DropButton2.Parent = DropScroll
                    DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    DropButton2.BackgroundTransparency = 1.000
                    DropButton2.Size = UDim2.new(0, 455, 0, 30)
                    DropButton2.AutoButtonColor = false
                    DropButton2.Font = Enum.Font.Gotham
                    DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
                    DropButton2.TextSize = 11.000
                    DropButton2.Text = tostring(t)
    
                    DropButton2.MouseButton1Click:Connect(function()
                        TweenService:Create(
                            Dropdown,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        Droptitle.Text =  text.." : "..tostring(t)
                        callback(t)
                        isdropping = not isdropping
                        DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                    end)
                end
                return drop
            end
    
            function main:AddSlider(text,min,max,set,callback)
                set = (math.clamp(set,min,max))
                if set > max then set = max end
    
                local Slider = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local SliderTitle = Instance.new("TextLabel")
                local SliderValue = Instance.new("TextLabel")
                local SliderButton = Instance.new("TextButton")
                local Bar1 = Instance.new("Frame")
                local Bar = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local CircleBar = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local UICorner_4 = Instance.new("UICorner")
    
                Slider.Name = "Slider"
                Slider.Parent = ScrollTab
                Slider.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                Slider.Size = UDim2.new(0, 455, 0, 40)
    
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Slider
    
                SliderTitle.Name = "SliderTitle"
                SliderTitle.Parent = Slider
                SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderTitle.BackgroundTransparency = 1.000
                SliderTitle.Position = UDim2.new(0.0283286124, 0, 0, 0)
                SliderTitle.Size = UDim2.new(0, 290, 0, 20)
                SliderTitle.Font = Enum.Font.Gotham
                SliderTitle.Text = text
                SliderTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderTitle.TextSize = 11.000
                SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
    
                SliderValue.Name = "SliderValue"
                SliderValue.Parent = Slider
                SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.BackgroundTransparency = 1.000
                SliderValue.Position = UDim2.new(0.887778878, 0, 0, 0)
                SliderValue.Size = UDim2.new(0, 40, 0, 20)
                SliderValue.Font = Enum.Font.Gotham
                SliderValue.Text =  tostring(set and math.floor( (set / max) * (max - min) + min) or 0)
                SliderValue.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderValue.TextSize = 11.000
    
                SliderButton.Name = "SliderButton"
                SliderButton.Parent = Slider
                SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderButton.BackgroundTransparency = 1.000
                SliderButton.Position = UDim2.new(0, 10, 0, 25)
                SliderButton.Size = UDim2.new(0, 435, 0, 5)
                SliderButton.AutoButtonColor = false
                SliderButton.Font = Enum.Font.SourceSans
                SliderButton.Text = ""
                SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                SliderButton.TextSize = 14.000
    
                Bar1.Name = "Bar1"
                Bar1.Parent = SliderButton
                Bar1.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
                Bar1.Size = UDim2.new(0, 435, 0, 5)
    
                Bar.Name = "Bar"
                Bar.Parent = Bar1
                Bar.BackgroundColor3 = Color3.fromRGB(255,165,0)
                Bar.Size = UDim2.new(set/max, 0, 0, 5)
    
                UICorner_2.CornerRadius = UDim.new(0, 100)
                UICorner_2.Parent = Bar
    
                CircleBar.Name = "CircleBar"
                CircleBar.Parent = Bar
                CircleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                CircleBar.Position = UDim2.new(1, -2, 0, -2)
                CircleBar.AnchorPoint = Vector2.new(0, 0.1)
                CircleBar.Size = UDim2.new(0, 10, 0, 10)
    
                UICorner_3.CornerRadius = UDim.new(0, 100)
                UICorner_3.Parent = CircleBar
    
                UICorner_4.CornerRadius = UDim.new(0, 100)
                UICorner_4.Parent = Bar1
                
                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
    
                if Value == nil then
                    Value = set
                    pcall(function()
                        callback(Value)
                    end)
                end
                
                SliderButton.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                    CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                    moveconnection = mouse.Move:Connect(function()
                        SliderValue.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                        CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                            CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                        SliderValue.Text = Value
                    end
                end)
            end
            function main:AddSeperator(text)
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local SepLabel = Instance.new("TextLabel")
                local Sep2 = Instance.new("Frame")
    
                Seperator.Name = "Seperator"
                Seperator.Parent = ScrollTab
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.ClipsDescendants = true
                Seperator.Size = UDim2.new(0, 455, 0, 20)
    
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = Color3.fromRGB(255,165,0)
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 150, 0, 1)
    
                SepLabel.Name = "SepLabel"
                SepLabel.Parent = Seperator
                SepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SepLabel.BackgroundTransparency = 1.000
                SepLabel.Position = UDim2.new(0, 95, 0, 0)
                SepLabel.Size = UDim2.new(0, 255, 0, 20)
                SepLabel.Font = Enum.Font.Gotham
                SepLabel.Text = text
                SepLabel.TextColor3 = Color3.fromRGB(225,225,225)
                SepLabel.TextSize = 11.000
    
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255,165,0)
                Sep2.BorderSizePixel = 0
                Sep2.Position = UDim2.new(0, 305, 0, 10)
                Sep2.Size = UDim2.new(0, 150, 0, 1)
            end
            function main:AddLine()
                local Line = Instance.new("Frame")
                local Linee = Instance.new("Frame")
    
                Line.Name = "Line"
                Line.Parent = ScrollTab
                Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Line.BackgroundTransparency = 1.000
                Line.ClipsDescendants = true
                Line.Size = UDim2.new(0, 455, 0, 20)
    
                Linee.Name = "Linee"
                Linee.Parent = Line
                Linee.BackgroundColor3 = Color3.fromRGB(255,165,0)
                Linee.BorderSizePixel = 0
                Linee.Position = UDim2.new(0, 0, 0, 10)
                Linee.Size = UDim2.new(0, 455, 0, 1)
            end
            function main:AddLabel(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = ScrollTab
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 455, 0, 20)
                Label.Font = Enum.Font.Gotham
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 11.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
    
                PaddingLabel.PaddingLeft = UDim.new(0,10)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end
            
            return main
        end
        return uitab
    end
--------------------------------------------------------------------
 
     local ScreenGui = Instance.new("ScreenGui")
    local Toggle = Instance.new("TextButton")
    
    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game.CoreGui
    
    Toggle.Name = "Toggle"
    Toggle.Parent = ScreenGui
    Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    Toggle.Size = UDim2.new(0, 50, 0, 50)
    Toggle.Font = Enum.Font.Code
    Toggle.Text = "data:image/jpeg;base64,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"   
    Toggle.TextColor3 = Color3.fromRGB(255, 165, 0)
    Toggle.TextScaled = true
    Toggle.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)
    --------------------------------------------------------------------
    local RenUi = library:AddWindow("SunHub | DinhQuyen",Enum.KeyCode.RightControl)
    --------------------------------------------------------------------
    local Main = RenUi:AddTab("Auto Farm","6026568198")
    local Combat = RenUi:AddTab("Combat","7251993295")
    --------------------------------------------------------------------
Wait(5)
Notification.new("<Color=Yellow>By DinhQuyenLor<Color=/>"):Display()

Combat:AddSeperator("Aimbot")
    Combat:AddToggle("Aimbot Gun",true,function(value)
        _G.Aimbot_Gun = value
    end)
    
    spawn(function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end)
            end
        end
    end)
    
    Combat:AddToggle("Aimbot Skill",true,function(value)
        _G.Aimbot_Skill = value
    end)
    
    spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end)

Combat:AddToggle("Enabled PvP",true,function(value)
        _G.EnabledPvP = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EnabledPvP then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)

Combat:AddSeperator("Bounty")
    
    local Current = Combat:AddLabel("Current Bounties :")
    
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local sub = string.sub 
    local len = string.len
    spawn(function()
        while wait() do
            pcall(function()
                if len(Bounty) == 4 then
                    Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
                elseif len(Bounty) == 5 then
                    Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
                elseif len(Bounty) == 6 then
                    Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
                elseif len(Bounty) == 7 then
                    Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
                elseif len(Bounty) == 8 then
                    Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
                elseif len(Bounty) <= 3 then
                    Bounty1 = Bounty
                end
                if tonumber(Bounty) == 25000000 then
                    Current:Set("Current Bounties : "..Bounty1.." [ Max ]")
                elseif tonumber(Bounty) < 25000000 then
                    Current:Set("Current Bounties : "..Bounty1)
                end
            end)
        end
    end)
    
    local Earn = Combat:AddLabel("Earned")
    local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
    local sub = string.sub 
    local len = string.len
    spawn(function()
        while wait() do
            pcall(function()
                if len(Earned) == 4 then
                    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
                elseif len(Earned) == 5 then
                    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
                elseif len(Earned) == 6 then
                    Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
                elseif len(Earned) == 7 then
                    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
                elseif len(Earned) == 8 then
                    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
                elseif len(Earned) <= 3 then
                    Earned1 = Earned
                end
                Earn:Set("Earned : "..tonumber(Earned1))
            end)
        end 
     end)

    
    Combat:AddToggle("Auto Farm Bounty",_G.AutoFarmBounty,function(value)
        _G.AutoFarmBounty = value
        StopTween(_G.AutoFarmBounty)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Shirt") then
                            v:Destroy()
                        end
                        if v:IsA("Pants") then
                            v:Destroy()
                        end
                        if v:IsA("Accessory") then
                            v:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            if _G.AutoFarmBounty then
                while wait() do
                    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    spawn(function()
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
                        game.Players.LocalPlayer.Character.Animate.Disabled = true
                    end)
                end
            end)
        end
    end)
    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
                                plyselecthunthelpold = v.Humanoid.Health
                                repeat task.wait()
                                    EquipWeapon(SelectWeaponGun)
                                    NameTarget = v.Name
                                    if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
                                    elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
                                        if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
                                        end
                                    end
                                    spawn(function()
                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                            StartCheckTarget = true
                                        end
                                    end)
                                    v.HumanoidRootPart.CanCollide = false
                                    spawn(function()
                                        pcall(function()
                                            local args = {
                                                [1] = v.HumanoidRootPart.Position,
                                                [2] = v.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        end)
                                    end)
                                    TargetSelectHunt = v.Humanoid
                                until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
                                NextplySelect = false
                                StartCheckTarget = false
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            while task.wait() do
                if _G.AutoFarmBounty then
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmBounty then
                    if TargetSelectHunt ~= nil then
                        if StartCheckTarget then
                            wait(6.5)
                            if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
                                NextplySelect = true
                                TargetSelectHunt = nil
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoFarmBounty then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)
    
    Combat:AddToggle("Auto Farm Bounty Hop",_G.AutoFarmBounty_Hop,function(value)
        _G.AutoFarmBounty_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBounty then
                if _G.AutoFarmBounty_Hop then
                    pcall(function()
                        wait(120)
                        Hop()
                    end)
                end
            end
        end
    end)
    
