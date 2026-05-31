-- Tạo ScreenGui che TUYỆT ĐỐI toàn bộ màn hình
local player = game.Players.LocalPlayer
local pgui = player:WaitForChild("PlayerGui")

if pgui:FindFirstChild("ActualLoaderHub") then
    pgui.ActualLoaderHub:Destroy()
end

local TrollUI = Instance.new("ScreenGui")
TrollUI.Name = "ActualLoaderHub"
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

--- LOGIC LOADER XỊN CHU KỲ .01 -> .10 (CHẠY TRONG ĐÚNG 10 GIÂY) ---
local statuses = {
    "Checking executor & exploit environment...",
    "Bypassing anti-cheat security...",
    "Injecting Hub core modules...",
    "Decryption successful! Launching..."
}

task.spawn(function()
    local mainDigit = 0
    local subDigit = 0
    
    -- Chia nhỏ để chạy khoảng 400 nấc số lẻ trong 10 giây (Tốc độ ~0.025s mỗi nấc)
    local totalLoops = 400
    local waitTime = 10.0 / totalLoops 
    
    for i = 1, totalLoops do
        task.wait(waitTime)
        
        -- Tính toán bước nhảy để phân bổ đều từ 0% đến 100% trong 400 lần lặp
        -- Mỗi vòng lặp sẽ tăng thêm 0.25% (tức là tăng 25 đơn vị ở hàng subDigit)
        subDigit = subDigit + 25
        if subDigit >= 100 then
            mainDigit = mainDigit + math.floor(subDigit / 100)
            subDigit = subDigit % 100
        end
        
        -- Vòng cuối cùng ép lên 100.00%
        if i == totalLoops or mainDigit >= 100 then
            mainDigit = 100
            subDigit = 0
        end
        
        -- Định dạng chuỗi hiển thị số
        local strSub = tostring(subDigit)
        if subDigit < 10 then strSub = "0" .. strSub end
        
        Percentage.Text = tostring(mainDigit) .. "." .. strSub .. "%"
        
        -- Cập nhật thanh Bar tiến trình thực tế
        local progressRatio = i / totalLoops
        ProgressFill.Size = UDim2.new(progressRatio, 0, 1, 0)
        GlowDot.Position = UDim2.new(1, -7, 0.5, -7)
        
        -- Đổi chữ trạng thái
        if progressRatio < 0.3 then StatusText.Text = statuses[1]
        elseif progressRatio < 0.6 then StatusText.Text = statuses[2]
        elseif progressRatio < 0.9 then StatusText.Text = statuses[3]
        else StatusText.Text = statuses[4] end
    end
    
    -- Xong 100.00% -> Tự hủy màn hình đen và chạy script
    task.wait(0.2)
    TrollUI:Destroy()
    
    ----------------------------------------------------------------------------------
    -- CHỖ DÁN SCRIPT CHÍNH CỦA BẠN Ở DƯỚI NÀY (THAY THẾ ĐOẠN LOADSTRING CỦA BẠN VÀO) --
    ----------------------------------------------------------------------------------
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeYHub/7e9b/main/w"))()
    
    ----------------------------------------------------------------------------------
end)
