--//老外做的
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui

local bar = Instance.new("Frame")
bar.Size = UDim2.new(0.25, 0, 0.04, 0)
bar.Position = UDim2.new(0.2, 0, 0.2, 0)
bar.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
bar.BorderColor3 = Color3.new(0, 0, 0)
bar.BorderSizePixel = 0
bar.Active = true
bar.BackgroundTransparency = 0 
bar.Draggable = true
bar.Parent = gui

local laa = Instance.new("ImageLabel")
laa.Size = UDim2.new(-0.5, 0, 1, 0)
laa.Position = UDim2.new(1, 0, 0, 0)
laa.BackgroundColor3 = Color3.new(0, 0, 0)
laa.ImageColor3 = Color3.new(0.35, 0.35, 0.35)
laa.Image = "rbxassetid://106723422431440"
laa.ImageTransparency = 0
laa.BackgroundTransparency = 1
laa.Parent = bar

local lbl = Instance.new("TextLabel")
lbl.Size = UDim2.new(0.4, 0, 1, 0)
lbl.Position = UDim2.new(0, 0, 0, 0)
lbl.BackgroundColor3 = Color3.new(0, 0, 0)
lbl.BorderColor3 = Color3.new(0, 0, 0)
lbl.BorderSizePixel = 0
lbl.Text = "NP Discontinued"
lbl.TextColor3 = Color3.new(255, 255, 255)
lbl.BackgroundTransparency = 1
lbl.Font = Enum.Font.Arial
lbl.TextSize = 15
lbl.Parent = bar

local main = Instance.new("Frame")
main.Size = UDim2.new(1, 0, 9, 0)
main.Position = UDim2.new(0, 0, 1, 0)
main.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
main.BorderColor3 = Color3.new(0, 0, 0)
main.BorderSizePixel = 0
main.Active = false
main.BackgroundTransparency = 0
main.Parent = bar

local la = Instance.new("ImageLabel")
la.BackgroundColor3 = Color3.new(0, 0, 0)
la.ImageColor3 = Color3.new(0.15, 0.15, 0.15)
la.Image = "rbxassetid://106723422431440"
la.ImageTransparency = 0
la.BackgroundTransparency = 1
la.Parent = main

local ba = Instance.new("TextButton")
ba.Size = UDim2.new(0.1, 0, 0.6, 0)
ba.Position = UDim2.new(0.87, 0, 0.2, 0)
ba.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ba.BorderColor3 = Color3.new(0, 0, 0)
ba.BorderSizePixel = 0
ba.Text = ">"
ba.TextColor3 = Color3.new(255, 255, 255)
ba.BackgroundTransparency = 0
ba.Font = Enum.Font.Arial
ba.TextSize = 15
ba.Visible = false
ba.Parent = bar

local bb = Instance.new("TextButton")
bb.Size = UDim2.new(0.1, 0, 0.6, 0)
bb.Position = UDim2.new(0.87, 0, 0.2, 0)
bb.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
bb.BorderColor3 = Color3.new(0, 0, 0)
bb.BorderSizePixel = 0
bb.Text = "–"
bb.TextColor3 = Color3.new(255, 255, 255)
bb.BackgroundTransparency = 0
bb.Font = Enum.Font.Arial
bb.TextSize = 15
bb.Parent = bar

local vbnm = game:GetService("TweenService")
local uiop = 0.4
local jklz = TweenInfo.new(uiop, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

bb.MouseButton1Click:Connect(function()
    local qwer = vbnm:Create(main, jklz, {Size = UDim2.new(1, 0, 0, 0)})
    qwer:Play()
        bb.Visible = false
        ba.Visible = true
    qwer.Completed:Connect(function()
        main.Visible = false
    end)
end)

ba.MouseButton1Click:Connect(function()
    main.Visible = true
    local asdf = vbnm:Create(main, jklz, {Size = UDim2.new(1, 0, 9, 0)})
    asdf:Play()
        bb.Visible = true
        ba.Visible = false
    asdf.Completed:Connect(function()
    end)
end)

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.6, 0, 0.3, 0)
box.Position = UDim2.new(0.05, 0, 0.07, 0)
box.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
box.BorderColor3 = Color3.new(0, 0, 0)
box.BorderSizePixel = 0
box.Text = ""
box.TextColor3 = Color3.new(1,1,1)
box.BackgroundTransparency = 0.8
box.Font = Enum.Font.SourceSans
box.TextSize = 15
box.PlaceholderText = "lol"
box.TextWrapped = true
box.ClearTextOnFocus = false
box.MultiLine = true
box.TextYAlignment = Enum.TextYAlignment.Top
box.TextXAlignment = Enum.TextXAlignment.Left
box.Parent = main

local sec = Instance.new("Frame")
sec.Size = UDim2.new(0.25, 0, 0.87, 0)
sec.Position = UDim2.new(0.7, 0, 0.07, 0)
sec.BackgroundColor3 = Color3.new(1, 1, 1)
sec.BorderColor3 = Color3.new(0, 0, 0)
sec.BorderSizePixel = 0
sec.Active = false
sec.BackgroundTransparency = 1
sec.Parent = main

local list = Instance.new("UIListLayout")
list.HorizontalAlignment = Enum.HorizontalAlignment.Center
list.SortOrder = Enum.SortOrder.LayoutOrder
list.Padding = UDim.new(0, 10)
list.Parent = sec

local send = Instance.new("TextButton")
send.Size = UDim2.new(1, 0, 0.1, 0)
send.Position = UDim2.new(0.5, 0, 0.5, 0)
send.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
send.BorderColor3 = Color3.new(0, 0, 0)
send.BorderSizePixel = 0
send.Text = "Send"
send.TextColor3 = Color3.new(255, 255, 255)
send.BackgroundTransparency = 0
send.Font = Enum.Font.Arial
send.TextSize = 15
send.Parent = sec

local send2 = Instance.new("TextButton")
send2.Size = UDim2.new(1, 0, 0.1, 0)
send2.Position = UDim2.new(0.5, 0, 0.5, 0)
send2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
send2.BorderColor3 = Color3.new(0, 0, 0)
send2.BorderSizePixel = 0
send2.Text = "Send v2"
send2.TextColor3 = Color3.new(255, 255, 255)
send2.BackgroundTransparency = 0
send2.Font = Enum.Font.Arial
send2.TextSize = 15
send2.Parent = sec

local sendc = Instance.new("TextButton")
sendc.Size = UDim2.new(1, 0, 0.1, 0)
sendc.Position = UDim2.new(0.5, 0, 0.5, 0)
sendc.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sendc.BorderColor3 = Color3.new(0, 0, 0)
sendc.BorderSizePixel = 0
sendc.Text = "Send v3"
sendc.TextColor3 = Color3.new(255, 255, 255)
sendc.BackgroundTransparency = 0
sendc.Font = Enum.Font.Arial
sendc.TextSize = 15
sendc.Parent = sec

local convert = Instance.new("TextButton")
convert.Size = UDim2.new(1, 0, 0.1, 0)
convert.Position = UDim2.new(0.5, 0, 0.5, 0)
convert.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
convert.BorderColor3 = Color3.new(0, 0, 0)
convert.BorderSizePixel = 0
convert.Text = "Convert"
convert.TextColor3 = Color3.new(255, 255, 255)
convert.BackgroundTransparency = 0
convert.Font = Enum.Font.Arial
convert.TextSize = 15
convert.Parent = sec

local convert2 = Instance.new("TextButton")
convert2.Size = UDim2.new(1, 0, 0.1, 0)
convert2.Position = UDim2.new(0.5, 0, 0.5, 0)
convert2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
convert2.BorderColor3 = Color3.new(0, 0, 0)
convert2.BorderSizePixel = 0
convert2.Text = "Convert v2"
convert2.TextColor3 = Color3.new(255, 255, 255)
convert2.BackgroundTransparency = 0
convert2.Font = Enum.Font.Arial
convert2.TextSize = 15
convert2.Parent = sec

local clear = Instance.new("TextButton")
clear.Size = UDim2.new(1, 0, 0.1, 0)
clear.Position = UDim2.new(0.0, 0, 0.5, 0)
clear.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
clear.BorderColor3 = Color3.new(0, 0, 0)
clear.BorderSizePixel = 0
clear.Text = "Clear"
clear.TextColor3 = Color3.new(255, 255, 255)
clear.BackgroundTransparency = 0
clear.Font = Enum.Font.Arial
clear.TextSize = 15
clear.Parent = sec

local credit = Instance.new("TextBox")
credit.Size = UDim2.new(0.6, 0, 0.5, 0)
credit.Position = UDim2.new(0.05, 0, 0.4, 0)
credit.BackgroundColor3 = Color3.new(0, 0, 0)
credit.BorderColor3 = Color3.new(0, 0, 0)
credit.BorderSizePixel = 0
credit.Text = "Created by: Algari_4 | Discontinued. https://raw.githubusercontent.com/AlgariBot/lua/refs/heads/Lua-Script-Executor/NeverPatchedBypass.txt"
credit.TextColor3 = Color3.new(255, 255, 255)
credit.BackgroundTransparency = 0.6
credit.Font = Enum.Font.Arial
credit.TextSize = 12
credit.Active = false
credit.ClearTextOnFocus = false
credit.MultiLine = true
credit.TextWrapped = true
credit.TextYAlignment = Enum.TextYAlignment.Top
credit.TextXAlignment = Enum.TextXAlignment.Left
credit.Parent = main

clear.MouseButton1Click:connect(function()
box.Text = ""
end)

local function sending()
    local TextChatService = game:GetService("TextChatService")
    local Players = game:GetService("Players")

    local function sendMessage(msg)
    local player = Players.LocalPlayer
    if TextChatService.ChatInputBarConfiguration.TargetTextChannel then
    TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(msg)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end
    end
sendMessage(box.Text)
end

local function convertText()
local text = box.Text
local convertedText = ""

local conversionTableUpper = {
    A = "Ạ", B = "Ḅ", C = "С", D = "Ḍ", E = "Ẹ",
    F = "F", G = "Ģ", H = "Ḥ", I = "Ị", J = "J",
    K = "Ḳ", L = "Ḷ", M = "Ṃ", N = "Ṇ", O = "Ọ",
    P = "Р", Q = "Q", R = "Ṛ", S = "Ṣ", T = "Ṭ",
    U = "Ụ", V = "Ṿ", W = "Ẉ", X = "Х", Y = "Ỵ", Z = "Ẓ"
}

local conversionTableLower = {
    a = "ạ", b = "ḅ", c = "с", d = "ḍ", e = "ẹ",
    f = "f", g = "ɡ", h = "ḥ", i = "ị", j = "ј",
    k = "ḳ", l = "ḷ", m = "ṃ", n = "ṇ", o = "ọ",
    p = "р", q = "q", r = "ṛ", s = "ṣ", t = "ṭ",
    u = "ụ", v = "ṿ", w = "ẉ", x = "х", y = "ỵ", z = "ẓ",
["0"] = "０￰", ["1"] = "１￰", ["2"] = "２￰", ["3"] = "３￰",
    ["4"] = "４￰", ["5"] = "５￰", ["6"] = "６￰", ["7"] = "７￰",
    ["8"] = "８￰", ["9"] = "９￰"
}

for char in text:gmatch(".") do
local convertedChar = conversionTableUpper[char] or conversionTableLower[char] or char
convertedText = convertedText .. convertedChar .. "̲"
end

box.Text = convertedText
end

local function convertTextb()
local textb = box.Text
local convertedTextb = ""

local conversionTableUpperb = {
    A = "Ạ", B = "B", C = "С", D = "Ḍ", E = "Ẹ",
    F = "F", G = "Ģ", H = "H", I = "Ị", J = "J",
    K = "Ḳ", L = "Ḷ", M = "Ṃ", N = "Ṇ", O = "Ọ",
    P = "Р", Q = "Q", R = "Ṛ", S = "Ṣ", T = "T",
    U = "Ụ", V = "V", W = "W", X = "Х", Y = "Ỵ", Z = "Ẓ"
}

local conversionTableLowerb = {
    a = "ạ", b = "b", c = "с", d = "ḍ", e = "ẹ",
    f = "f", g = "ɡ", h = "h", i = "ị", j = "ј",
    k = "ḳ", l = "ḷ", m = "ṃ", n = "ṇ", o = "ọ",
    p = "р", q = "q", r = "ṛ", s = "ṣ", t = "t",
    u = "ụ", v = "v", w = "w", x = "х", y = "ỵ", z = "ẓ",
["0"] = "０￰", ["1"] = "１￰", ["2"] = "２￰", ["3"] = "３￰",
    ["4"] = "４￰", ["5"] = "５￰", ["6"] = "６￰", ["7"] = "７￰",
    ["8"] = "８￰", ["9"] = "９￰",
}

for char in textb:gmatch(".") do
local convertedCharb = conversionTableUpperb[char] or conversionTableLowerb[char] or char
convertedTextb = convertedTextb .. convertedCharb .. "̣"
end

box.Text = convertedTextb
end

local function convertTextc()
    local textc = box.Text
    local convertedTextc = ""

    local conversionTableUpperc = {
        A = "Ạ", B = "B", C = "С", D = "Ḍ", E = "Ẹ",
        F = "F", G = "Ģ", H = "Ḥ", I = "Ị", J = "J",
        K = "Ḳ", L = "Ḷ", M = "Ṃ", N = "Ṇ", O = "Ọ",
        P = "Р", Q = "Q", R = "Ṛ", S = "Ṣ", T = "T",
        U = "Ụ", V = "V", W = "W", X = "Х", Y = "Ỵ", Z = "Ẓ"
    }

    local conversionTableLowerc = {
        a = "ạ", b = "b", c = "с", d = "ḍ", e = "ẹ",
        f = "f", g = "ɡ", h = "ḥ", i = "ị", j = "ј",
        k = "ḳ", l = "ḷ", m = "ṃ", n = "ṇ", o = "ọ",
        p = "р", q = "q", r = "ṛ", s = "ṣ", t = "t",
        u = "ụ", v = "v", w = "w", x = "х", y = "ỵ", z = "ẓ",
        ["0"] = "０￰", ["1"] = "１￰", ["2"] = "２￰", ["3"] = "３￰",
        ["4"] = "４￰", ["5"] = "５￰", ["6"] = "６￰", ["7"] = "７￰",
        ["8"] = "８￰", ["9"] = "９￰",
    }

    local charCount = 0

    for char in textc:gmatch(".") do
        if char == " " then
            convertedTextc = convertedTextc .. " "
        else
            local convertedCharc = conversionTableUpperc[char] or conversionTableLowerc[char] or char
            convertedTextc = convertedTextc .. convertedCharc
            charCount = charCount + 1
            
            if charCount % math.random(2, 3) == 0 then
                convertedTextc = convertedTextc .. "￸̜"
            end
        end
    end

    box.Text = "< " .. convertedTextc.. " >"
end

send.MouseButton1Click:connect(function()
convertText()
sending()
box.Text = ""
end)

send2.MouseButton1Click:connect(function()
convertTextb()
sending()
box.Text = ""
end)

sendc.MouseButton1Click:connect(function()
convertTextc()
sending()
box.Text = ""
end)

convert.MouseButton1Click:connect(function()
convertText()
end)

convert2.MouseButton1Click:connect(function()
convertTextb()
end)

local fhf = Instance.new("TextLabel")
fhf.Size = UDim2.new(1, 0, 0.2, 0)
fhf.Position = UDim2.new(0, 0, 0.8, 0)
fhf.BackgroundColor3 = Color3.new(0, 0, 0)
fhf.BorderColor3 = Color3.new(0, 0, 0)
fhf.BorderSizePixel = 0
fhf.Text = "Use At Your Own Risk, 0,0001%"
fhf.TextColor3 = Color3.new(255, 255, 255)
fhf.BackgroundTransparency = 1
fhf.Font = Enum.Font.ArialBold
fhf.TextSize = 15
fhf.Parent = fy
