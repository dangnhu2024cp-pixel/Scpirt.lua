-- SMOBILE X HUB - Key Verification System
-- For Roblox Studio testing only

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local VALID_KEY = "Smobile100290"
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("SmobileXHub") then
    playerGui.SmobileXHub:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SmobileXHub"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = game:GetService("Lighting")

local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
overlay.BackgroundTransparency = 0.5
overlay.BorderSizePixel = 0
overlay.ZIndex = 1
overlay.Parent = screenGui

local card = Instance.new("Frame")
card.Size = UDim2.new(0, 400, 0, 0)
card.Position = UDim2.new(0.5, -200, 1.5, 0)
card.BackgroundColor3 = Color3.fromRGB(28, 16, 5)
card.BorderSizePixel = 0
card.ZIndex = 2
card.Parent = screenGui

Instance.new("UICorner", card).CornerRadius = UDim.new(0, 18)

local cardStroke = Instance.new("UIStroke")
cardStroke.Color = Color3.fromRGB(255, 215, 0)
cardStroke.Thickness = 2
cardStroke.Parent = card

local cardLayout = Instance.new("UIListLayout")
cardLayout.FillDirection = Enum.FillDirection.Vertical
cardLayout.SortOrder = Enum.SortOrder.LayoutOrder
cardLayout.Padding = UDim.new(0, 0)
cardLayout.Parent = card

cardLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    card.Size = UDim2.new(0, 400, 0, cardLayout.AbsoluteContentSize.Y)
    card.Position = UDim2.new(0.5, -200, 0.5, -cardLayout.AbsoluteContentSize.Y / 2)
end)

-- ═══════════ HEADER ═══════════
local header = Instance.new("Frame")
header.Size = UDim2.new(1, 0, 0, 62)
header.BackgroundColor3 = Color3.fromRGB(42, 24, 0)
header.BorderSizePixel = 0
header.LayoutOrder = 1
header.ZIndex = 3
header.Parent = card

local hCorner = Instance.new("UICorner")
hCorner.CornerRadius = UDim.new(0, 18)
hCorner.Parent = header

local hFix = Instance.new("Frame")
hFix.Size = UDim2.new(1, 0, 0.5, 0)
hFix.Position = UDim2.new(0, 0, 0.5, 0)
hFix.BackgroundColor3 = Color3.fromRGB(42, 24, 0)
hFix.BorderSizePixel = 0
hFix.ZIndex = 3
hFix.Parent = header

local hDivider = Instance.new("Frame")
hDivider.Size = UDim2.new(1, 0, 0, 1)
hDivider.Position = UDim2.new(0, 0, 1, -1)
hDivider.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
hDivider.BackgroundTransparency = 0.5
hDivider.BorderSizePixel = 0
hDivider.ZIndex = 4
hDivider.Parent = header

local logoIcon = Instance.new("TextLabel")
logoIcon.Size = UDim2.new(0, 38, 0, 38)
logoIcon.Position = UDim2.new(0, 14, 0.5, -19)
logoIcon.BackgroundColor3 = Color3.fromRGB(255, 180, 0)
logoIcon.Text = "⚡"
logoIcon.TextScaled = true
logoIcon.Font = Enum.Font.GothamBold
logoIcon.TextColor3 = Color3.fromRGB(20, 10, 0)
logoIcon.ZIndex = 5
logoIcon.Parent = header
Instance.new("UICorner", logoIcon).CornerRadius = UDim.new(0, 8)

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 180, 0, 22)
titleLabel.Position = UDim2.new(0, 60, 0, 10)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "SMOBILE X HUB"
titleLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.ZIndex = 5
titleLabel.Parent = header

local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Size = UDim2.new(0, 200, 0, 14)
subtitleLabel.Position = UDim2.new(0, 60, 0, 34)
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Text = "HỆ THỐNG XÁC MINH KEY"
subtitleLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
subtitleLabel.Font = Enum.Font.Gotham
subtitleLabel.TextSize = 9
subtitleLabel.TextXAlignment = Enum.TextXAlignment.Left
subtitleLabel.ZIndex = 5
subtitleLabel.Parent = header

local fixLagBtn = Instance.new("TextButton")
fixLagBtn.Size = UDim2.new(0, 78, 0, 26)
fixLagBtn.Position = UDim2.new(1, -170, 0.5, -13)
fixLagBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
fixLagBtn.Text = "⚡ Fix Lag"
fixLagBtn.TextColor3 = Color3.fromRGB(20, 10, 0)
fixLagBtn.Font = Enum.Font.GothamBold
fixLagBtn.TextSize = 11
fixLagBtn.ZIndex = 5
fixLagBtn.Parent = header
Instance.new("UICorner", fixLagBtn).CornerRadius = UDim.new(0, 8)

local langBtn = Instance.new("TextButton")
langBtn.Size = UDim2.new(0, 60, 0, 26)
langBtn.Position = UDim2.new(1, -84, 0.5, -13)
langBtn.BackgroundColor3 = Color3.fromRGB(50, 30, 5)
langBtn.Text = "🇻🇳 VIE"
langBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
langBtn.Font = Enum.Font.GothamBold
langBtn.TextSize = 10
langBtn.ZIndex = 5
langBtn.Parent = header
Instance.new("UICorner", langBtn).CornerRadius = UDim.new(0, 8)
local langStroke = Instance.new("UIStroke")
langStroke.Color = Color3.fromRGB(255, 215, 0)
langStroke.Transparency = 0.5
langStroke.Parent = langBtn

-- ═══════════ BODY ═══════════
local body = Instance.new("Frame")
body.Size = UDim2.new(1, 0, 0, 10)
body.BackgroundTransparency = 1
body.LayoutOrder = 2
body.ZIndex = 3
body.Parent = card

local bodyLayout = Instance.new("UIListLayout")
bodyLayout.FillDirection = Enum.FillDirection.Vertical
bodyLayout.SortOrder = Enum.SortOrder.LayoutOrder
bodyLayout.Padding = UDim.new(0, 10)
bodyLayout.Parent = body

local bodyPad = Instance.new("UIPadding")
bodyPad.PaddingLeft = UDim.new(0, 14)
bodyPad.PaddingRight = UDim.new(0, 14)
bodyPad.PaddingTop = UDim.new(0, 14)
bodyPad.PaddingBottom = UDim.new(0, 14)
bodyPad.Parent = body

bodyLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    body.Size = UDim2.new(1, 0, 0, bodyLayout.AbsoluteContentSize.Y + 28)
end)

-- User Card
local userCard = Instance.new("Frame")
userCard.Size = UDim2.new(1, 0, 0, 70)
userCard.BackgroundColor3 = Color3.fromRGB(38, 22, 5)
userCard.BorderSizePixel = 0
userCard.LayoutOrder = 1
userCard.ZIndex = 4
userCard.Parent = body
Instance.new("UICorner", userCard).CornerRadius = UDim.new(0, 12)
local ucStroke = Instance.new("UIStroke")
ucStroke.Color = Color3.fromRGB(255, 215, 0)
ucStroke.Transparency = 0.75
ucStroke.Parent = userCard

local avatarFrame = Instance.new("Frame")
avatarFrame.Size = UDim2.new(0, 52, 0, 52)
avatarFrame.Position = UDim2.new(0, 10, 0.5, -26)
avatarFrame.BackgroundColor3 = Color3.fromRGB(255, 180, 0)
avatarFrame.ZIndex = 5
avatarFrame.Parent = userCard
Instance.new("UICorner", avatarFrame).CornerRadius = UDim.new(1, 0)

local avatarImg = Instance.new("ImageLabel")
avatarImg.Size = UDim2.new(1, -4, 1, -4)
avatarImg.Position = UDim2.new(0, 2, 0, 2)
avatarImg.BackgroundTransparency = 1
avatarImg.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=150&height=150&format=png"
avatarImg.ZIndex = 6
avatarImg.Parent = avatarFrame
Instance.new("UICorner", avatarImg).CornerRadius = UDim.new(1, 0)

local usernameLabel = Instance.new("TextLabel")
usernameLabel.Size = UDim2.new(1, -80, 0, 22)
usernameLabel.Position = UDim2.new(0, 72, 0, 14)
usernameLabel.BackgroundTransparency = 1
usernameLabel.Text = "👤 " .. player.Name
usernameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
usernameLabel.Font = Enum.Font.GothamBold
usernameLabel.TextSize = 14
usernameLabel.TextXAlignment = Enum.TextXAlignment.Left
usernameLabel.ZIndex = 5
usernameLabel.Parent = userCard

local warningLabel = Instance.new("TextLabel")
warningLabel.Size = UDim2.new(1, -80, 0, 18)
warningLabel.Position = UDim2.new(0, 72, 0, 38)
warningLabel.BackgroundTransparency = 1
warningLabel.Text = "⚠ Chỉ dùng thử trên Studio!"
warningLabel.TextColor3 = Color3.fromRGB(255, 100, 50)
warningLabel.Font = Enum.Font.Gotham
warningLabel.TextSize = 10
warningLabel.TextXAlignment = Enum.TextXAlignment.Left
warningLabel.ZIndex = 5
warningLabel.Parent = userCard

-- Key Input
local inputFrame = Instance.new("Frame")
inputFrame.Size = UDim2.new(1, 0, 0, 46)
inputFrame.BackgroundColor3 = Color3.fromRGB(22, 13, 3)
inputFrame.BorderSizePixel = 0
inputFrame.LayoutOrder = 2
inputFrame.ZIndex = 4
inputFrame.Parent = body
Instance.new("UICorner", inputFrame).CornerRadius = UDim.new(0, 12)

local inStroke = Instance.new("UIStroke")
inStroke.Color = Color3.fromRGB(255, 215, 0)
inStroke.Transparency = 0.65
inStroke.Parent = inputFrame

local keyIcon = Instance.new("TextLabel")
keyIcon.Size = UDim2.new(0, 30, 1, 0)
keyIcon.Position = UDim2.new(0, 8, 0, 0)
keyIcon.BackgroundTransparency = 1
keyIcon.Text = "🔑"
keyIcon.TextSize = 18
keyIcon.Font = Enum.Font.Gotham
keyIcon.ZIndex = 5
keyIcon.Parent = inputFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(1, -50, 1, -10)
keyInput.Position = UDim2.new(0, 42, 0, 5)
keyInput.BackgroundTransparency = 1
keyInput.PlaceholderText = "Dán Key SMOBILE-... vào đây"
keyInput.PlaceholderColor3 = Color3.fromRGB(120, 100, 60)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 240, 200)
keyInput.Font = Enum.Font.Gotham
keyInput.TextSize = 12
keyInput.TextXAlignment = Enum.TextXAlignment.Left
keyInput.ClearTextOnFocus = false
keyInput.ZIndex = 5
keyInput.Parent = inputFrame

-- Status Bar (ẩn lúc đầu)
local statusBar = Instance.new("Frame")
statusBar.Size = UDim2.new(1, 0, 0, 36)
statusBar.BackgroundColor3 = Color3.fromRGB(45, 10, 10)
statusBar.BorderSizePixel = 0
statusBar.LayoutOrder = 3
statusBar.ZIndex = 4
statusBar.Visible = false  -- ẨN LÚC ĐẦU
statusBar.Parent = body
Instance.new("UICorner", statusBar).CornerRadius = UDim.new(0, 10)

local sbStroke = Instance.new("UIStroke")
sbStroke.Color = Color3.fromRGB(255, 60, 60)
sbStroke.Transparency = 0.5
sbStroke.Parent = statusBar

local statusDot = Instance.new("Frame")
statusDot.Size = UDim2.new(0, 10, 0, 10)
statusDot.Position = UDim2.new(0, 12, 0.5, -5)
statusDot.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
statusDot.BorderSizePixel = 0
statusDot.ZIndex = 5
statusDot.Parent = statusBar
Instance.new("UICorner", statusDot).CornerRadius = UDim.new(1, 0)

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -35, 1, 0)
statusLabel.Position = UDim2.new(0, 28, 0, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 11
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.ZIndex = 5
statusLabel.Parent = statusBar

-- Buttons Row
local btnRow = Instance.new("Frame")
btnRow.Size = UDim2.new(1, 0, 0, 46)
btnRow.BackgroundTransparency = 1
btnRow.LayoutOrder = 4
btnRow.ZIndex = 4
btnRow.Parent = body

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Size = UDim2.new(0.38, -5, 1, 0)
getKeyBtn.Position = UDim2.new(0, 0, 0, 0)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(28, 18, 5)
getKeyBtn.Text = "🔗 LẤY KEY"
getKeyBtn.TextColor3 = Color3.fromRGB(180, 150, 60)
getKeyBtn.Font = Enum.Font.GothamBold
getKeyBtn.TextSize = 11
getKeyBtn.ZIndex = 5
getKeyBtn.Parent = btnRow
Instance.new("UICorner", getKeyBtn).CornerRadius = UDim.new(0, 12)
local gkStroke = Instance.new("UIStroke")
gkStroke.Color = Color3.fromRGB(255, 215, 0)
gkStroke.Transparency = 0.7
gkStroke.Parent = getKeyBtn

local verifyBtn = Instance.new("TextButton")
verifyBtn.Size = UDim2.new(0.62, -5, 1, 0)
verifyBtn.Position = UDim2.new(0.38, 5, 0, 0)
verifyBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
verifyBtn.Text = "✔ XÁC MINH"
verifyBtn.TextColor3 = Color3.fromRGB(20, 10, 0)
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.TextSize = 13
verifyBtn.ZIndex = 5
verifyBtn.Parent = btnRow
Instance.new("UICorner", verifyBtn).CornerRadius = UDim.new(0, 12)

local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1, 0, 0, 18)
footer.BackgroundTransparency = 1
footer.Text = "SMOBILE X HUB  •  FOR ROBLOX STUDIO ONLY"
footer.TextColor3 = Color3.fromRGB(80, 60, 30)
footer.Font = Enum.Font.Gotham
footer.TextSize = 9
footer.LayoutOrder = 5
footer.ZIndex = 4
footer.Parent = body

-- ═══════════════════════════
-- HÀM HIỂN THỊ STATUS
-- ═══════════════════════════
local function setStatus(msg, isSuccess)
    statusBar.Visible = true
    statusLabel.Text = msg

    if isSuccess then
        -- Xanh lá = key đúng
        statusBar.BackgroundColor3 = Color3.fromRGB(10, 40, 10)
        sbStroke.Color = Color3.fromRGB(60, 255, 100)
        statusDot.BackgroundColor3 = Color3.fromRGB(60, 255, 100)
        statusLabel.TextColor3 = Color3.fromRGB(80, 255, 120)
        inStroke.Color = Color3.fromRGB(60, 255, 100)
    else
        -- Đỏ = sai hoặc trống
        statusBar.BackgroundColor3 = Color3.fromRGB(45, 10, 10)
        sbStroke.Color = Color3.fromRGB(255, 60, 60)
        statusDot.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        inStroke.Color = Color3.fromRGB(255, 60, 60)
    end
end

-- Reset input stroke khi người dùng gõ lại
keyInput:GetPropertyChangedSignal("Text"):Connect(function()
    inStroke.Color = Color3.fromRGB(255, 215, 0)
    inStroke.Transparency = 0.65
    statusBar.Visible = false
end)

-- ═══════════════════════════
-- LANGUAGE TOGGLE
-- ═══════════════════════════
local isVie = true
local lagIsFixed = false

local langs = {
    vi = {
        subtitle    = "HỆ THỐNG XÁC MINH KEY",
        warning     = "⚠ Chỉ dùng thử trên Studio!",
        placeholder = "Dán Key SMOBILE-... vào đây",
        getKey      = "🔗 LẤY KEY",
        verify      = "✔ XÁC MINH",
        fixLag      = "⚡ Fix Lag",
        fixLagDone  = "✅ Đã Fix",
        langBtn     = "🇬🇧 ENG",
        empty       = "Vui lòng nhập key ở ô phía trên!",
        wrong       = "Key sai, vui lòng thử lại!",
        correct     = "Key đúng, đang kích hoạt script!",
        lagFixed    = "✅ Đã tối ưu lag thành công!",
        footer      = "SMOBILE X HUB  •  CHỈ THỬ TRÊN STUDIO",
    },
    en = {
        subtitle    = "KEY VERIFICATION SYSTEM",
        warning     = "⚠ For Roblox Studio testing only!",
        placeholder = "Paste Key SMOBILE-... here",
        getKey      = "🔗 GET KEY",
        verify      = "✔ VERIFY",
        fixLag      = "⚡ Fix Lag",
        fixLagDone  = "✅ Fixed",
        langBtn     = "🇻🇳 VIE",
        empty       = "Please enter your key in the box above!",
        wrong       = "Wrong key, please try again!",
        correct     = "Correct key, activating script!",
        lagFixed    = "✅ Lag optimization applied!",
        footer      = "SMOBILE X HUB  •  FOR ROBLOX STUDIO ONLY",
    }
}

local function getLang()
    return isVie and langs.vi or langs.en
end

langBtn.MouseButton1Click:Connect(function()
    isVie = not isVie
    local l = getLang()
    subtitleLabel.Text = l.subtitle
    warningLabel.Text = l.warning
    keyInput.PlaceholderText = l.placeholder
    getKeyBtn.Text = l.getKey
    verifyBtn.Text = l.verify
    langBtn.Text = l.langBtn
    footer.Text = l.footer
    fixLagBtn.Text = lagIsFixed and l.fixLagDone or l.fixLag
end)

-- ═══════════════════════════
-- FIX LAG
-- ═══════════════════════════
fixLagBtn.MouseButton1Click:Connect(function()
    if lagIsFixed then return end
    local l = getLang()
    fixLagBtn.Text = "⏳ ..."
    fixLagBtn.BackgroundColor3 = Color3.fromRGB(180, 140, 0)

    local lighting = game:GetService("Lighting")
    lighting.GlobalShadows = false
    lighting.FogEnd = 100000

    wait(1.2)
    lagIsFixed = true
    fixLagBtn.Text = l.fixLagDone
    fixLagBtn.BackgroundColor3 = Color3.fromRGB(20, 80, 20)
    fixLagBtn.TextColor3 = Color3.fromRGB(100, 255, 120)

    setStatus(l.lagFixed, true)
end)

-- ═══════════════════════════
-- VERIFY
-- ═══════════════════════════
verifyBtn.MouseButton1Click:Connect(function()
    local l = getLang()
    local inputKey = keyInput.Text

    -- Animate nhấn
    TweenService:Create(verifyBtn, TweenInfo.new(0.08), {Size = UDim2.new(0.60, -7, 0.9, 0)}):Play()
    wait(0.08)
    TweenService:Create(verifyBtn, TweenInfo.new(0.08), {Size = UDim2.new(0.62, -5, 1, 0)}):Play()

    if inputKey == "" then
        -- Không nhập gì
        setStatus(l.empty, false)

        -- Rung input
        local orig = inputFrame.Position
        for i = 1, 4 do
            TweenService:Create(inputFrame, TweenInfo.new(0.05), {
                Position = orig + UDim2.new(0, (i % 2 == 0 and 6 or -6), 0, 0)
            }):Play()
            wait(0.05)
        end
        TweenService:Create(inputFrame, TweenInfo.new(0.05), {Position = orig}):Play()

    elseif inputKey ~= VALID_KEY then
        -- Nhập sai key
        setStatus(l.wrong, false)

        local orig = inputFrame.Position
        for i = 1, 4 do
            TweenService:Create(inputFrame, TweenInfo.new(0.05), {
                Position = orig + UDim2.new(0, (i % 2 == 0 and 6 or -6), 0, 0)
            }):Play()
            wait(0.05)
        end
        TweenService:Create(inputFrame, TweenInfo.new(0.05), {Position = orig}):Play()

    else
        -- Key đúng!
        setStatus(l.correct, true)
        verifyBtn.BackgroundColor3 = Color3.fromRGB(30, 200, 80)
        verifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

        wait(2)
        TweenService:Create(card, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Position = UDim2.new(0.5, -200, 1.5, 0)
        }):Play()
        TweenService:Create(blur, TweenInfo.new(0.4), {Size = 0}):Play()
        wait(0.45)
        screenGui:Destroy()
        blur:Destroy()
    end
end)

-- ═══════════════════════════
-- ENTRANCE ANIMATION
-- ═══════════════════════════
TweenService:Create(blur, TweenInfo.new(0.4), {Size = 10}):Play()
wait(0.1)
TweenService:Create(card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, -200, 0.5, -220)
}):Play()

print("[Smobile X Hub] Loaded! Key: " .. VALID_KEY)
