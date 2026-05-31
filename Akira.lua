-- Tạo ScreenGui che TUYỆT ĐỐI toàn bộ màn hình
local player = game.Players.LocalPlayer
local pgui = player:WaitForChild("PlayerGui")

if pgui:FindFirstChild("TrollLoaderHub") then
    pgui.TrollLoaderHub:Destroy()
end

local TrollUI = Instance.new("ScreenGui")
TrollUI.Name = "TrollLoaderHub"
TrollUI.ResetOnSpawn = false
TrollUI.DisplayOrder = 9999999
TrollUI.IgnoreGuiInset = true
TrollUI.Parent = pgui

-- Màn hình nền đen che hết toàn bộ
local Background = Instance.new("Frame")
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
Background.Active = true
Background.Selectable = true
Background.Parent = TrollUI

-- Khung Loader chính
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 440, 0, 200)
MainFrame.Position = UDim2.new(0.5, -220, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(19, 23, 38)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = Background

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(40, 50, 80)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- Tiêu đề
local Title = Instance.new("TextLabel")
Title.Text = "Blox Fruits Loader"
Title.Size = UDim2.new(0, 200, 0, 25)
Title.Position = UDim2.new(0, 24, 0, 22)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(200, 210, 230)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.BackgroundTransparency = 1
Title.Parent = MainFrame

-- Subtitle
local Subtitle = Instance.new("TextLabel")
Subtitle.Text = "Preparing secure environment..."
Subtitle.Size = UDim2.new(0, 200, 0, 15)
Subtitle.Position = UDim2.new(0, 24, 0, 44)
Subtitle.Font = Enum.Font.SourceSans
Subtitle.TextSize = 12
Subtitle.TextColor3 = Color3.fromRGB(110, 120, 140)
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.BackgroundTransparency = 1
Subtitle.Parent = MainFrame

-- Text hiển thị Phần Trăm (%)
local Percentage = Instance.new("TextLabel")
Percentage.Text = "0.00%"
Percentage.Size = UDim2.new(1, 0, 0, 40)
Percentage.Position = UDim2.new(0, 0, 0, 75)
Percentage.Font = Enum.Font.SourceSansBold
Percentage.TextSize = 36
Percentage.TextColor3 = Color3.fromRGB(240, 245, 255)
Percentage.BackgroundTransparency = 1
Percentage.Parent = MainFrame

-- Status dưới phần trăm
local StatusText = Instance.new("TextLabel")
StatusText.Text = "Checking executor & exploit environment..."
StatusText.Size = UDim2.new(1, 0, 0, 15)
StatusText.Position = UDim2.new(0, 0, 0, 122)
StatusText.Font = Enum.Font.SourceSans
StatusText.TextSize = 12
StatusText.TextColor3 = Color3.fromRGB(140, 150, 170)
StatusText.BackgroundTransparency = 1
StatusText.Parent = MainFrame

-- Thanh Progress Bar (Nền)
local ProgressBg = Instance.new("Frame")
ProgressBg.Size = UDim2.new(1, -48, 0, 8)
ProgressBg.Position = UDim2.new(0, 24, 0, 152)
ProgressBg.BackgroundColor3 = Color3.fromRGB(28, 33, 48)
ProgressBg.BorderSizePixel = 0
ProgressBg.Parent = MainFrame

local PBgCorner = Instance.new("UICorner")
PBgCorner.CornerRadius = UDim.new(0, 4)
PBgCorner.Parent = ProgressBg

-- Thanh Progress Bar (Chạy)
local ProgressFill = Instance.new("Frame")
ProgressFill.Size = UDim2.new(0, 0, 1, 0)
ProgressFill.BackgroundColor3 = Color3.fromRGB(45, 105, 250)
ProgressFill.BorderSizePixel = 0
ProgressFill.Parent = ProgressBg

local PFillCorner = Instance.new("UICorner")
PFillCorner.CornerRadius = UDim.new(0, 4)
PFillCorner.Parent = ProgressFill

-- Chấm tròn phát sáng
local GlowDot = Instance.new("Frame")
GlowDot.Size = UDim2.new(0, 14, 0, 14)
GlowDot.Position = UDim2.new(0, -7, 0.5, -7)
GlowDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlowDot.Visible = true
GlowDot.Parent = ProgressFill

local DotCorner = Instance.new("UICorner")
DotCorner.CornerRadius = UDim.new(1, 0)
DotCorner.Parent = GlowDot

-- Footer
local FooterLeft = Instance.new("TextLabel")
FooterLeft.Text = "Secure script loader"
FooterLeft.Size = UDim2.new(0, 150, 0, 15)
FooterLeft.Position = UDim2.new(0, 24, 1, -22)
FooterLeft.Font = Enum.Font.SourceSans
FooterLeft.TextSize = 11
FooterLeft.TextColor3 = Color3.fromRGB(90, 100, 120)
FooterLeft.TextXAlignment = Enum.TextXAlignment.Left
FooterLeft.BackgroundTransparency = 1
FooterLeft.Parent = MainFrame

local FooterRight = Instance.new("TextLabel")
FooterRight.Text = "This may take a while on first attach."
FooterRight.Size = UDim2.new(0, 200, 0, 15)
FooterRight.Position = UDim2.new(1, -224, 1, -22)
FooterRight.Font = Enum.Font.SourceSans
FooterRight.TextSize = 11
FooterRight.TextColor3 = Color3.fromRGB(90, 100, 120)
FooterRight.TextXAlignment = Enum.TextXAlignment.Right
FooterRight.BackgroundTransparency = 1
FooterRight.Parent = MainFrame

--- LOGIC TROLL CHU KỲ .01 -> .10 -> KẸT 94.80% ---
local statuses = {
    "Bypassing anti-cheat security...",
    "Injecting Hub core modules...",
    "Fetching operational data from server...",
    "Verifying whitelist status..."
}

task.spawn(function()
    local mainDigit = 0 -- Phần số nguyên
    local subDigit = 0  -- Phần số thập phân lẻ (0 đến 99)
    
    while not (mainDigit == 94 and subDigit == 80) do
        -- Cài đặt thời gian delay chậm dần theo từng mốc phần trăm số nguyên
        local stepDelay = 0.01 
        if mainDigit >= 10 and mainDigit < 20 then stepDelay = 0.05
        elseif mainDigit >= 20 and mainDigit < 30 then stepDelay = 0.1
        elseif mainDigit >= 30 and mainDigit < 40 then stepDelay = 0.2
        elseif mainDigit >= 40 and mainDigit < 50 then stepDelay = 0.4
        elseif mainDigit >= 50 and mainDigit < 60 then stepDelay = 0.8
        elseif mainDigit >= 60 and mainDigit < 70 then stepDelay = 1.6
        elseif mainDigit >= 70 and mainDigit < 80 then stepDelay = 3.2
        elseif mainDigit >= 80 then stepDelay = 6.4 end
        
        task.wait(stepDelay)
        
        -- Tăng phần số thập phân lẻ
        subDigit = subDigit + 1
        if subDigit >= 100 then
            subDigit = 0
            mainDigit = mainDigit + 1
        end
        
        -- Ép dừng chính xác tại mốc kẹt 94.80%
        if mainDigit >= 94 and subDigit >= 80 then
            mainDigit = 94
            subDigit = 80
        end
        
        -- Định dạng chuỗi hiển thị đúng kiểu: 1.01%, 1.02%... 1.10%
        local strSub = tostring(subDigit)
        if subDigit < 10 then strSub = "0" .. strSub end -- Thêm số 0 nếu dưới 10
        
        Percentage.Text = tostring(mainDigit) .. "." .. strSub .. "%"
        
        -- Cập nhật thanh tiến trình Bar
        local totalPercentValue = mainDigit + (subDigit / 100)
        ProgressFill.Size = UDim2.new(totalPercentValue / 100, 0, 1, 0)
        GlowDot.Position = UDim2.new(1, -7, 0.5, -7)
        
        if math.random(1, 100) == 50 then
            StatusText.Text = statuses[math.random(1, #statuses)]
        end
    end
    
    -- KHI CHẠM 94.80% -> TREO GAME
    StatusText.Text = "Fatal Error: Secure link integrity compromised. Retrying..."
    StatusText.TextColor3 = Color3.fromRGB(255, 75, 75)
    
    while true do task.wait(1) end
end)
