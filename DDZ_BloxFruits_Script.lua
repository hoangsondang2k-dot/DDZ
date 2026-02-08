
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua"))()

local DDZ_UI = Library:CreateWindow("DDZ Blox Fruits Script - Tiếng Việt")

local LogoSection = DDZ_UI:AddSection("Logo DDZ")
LogoSection:AddImage("")

local TabCombat = DDZ_UI:AddTab("Farm & Chiến Đấu")

local SectionFastAttack = TabCombat:AddSection("Tấn Công Nhanh")

SectionFastAttack:AddToggle("Fast Attack", { 
    Text = "Bật/Tắt Tấn Công Nhanh",
    Default = false,
    Callback = function(state) 
        if state then
            print("Fast Attack đã được BẬT")
        else
            print("Fast Attack đã được TẮT")
        end
    end
})

SectionFastAttack:AddSlider("Fast Attack Speed", {
    Text = "Tốc Độ Tấn Công (km/h)",
    Default = 1000,
    Min = 100,
    Max = 10000,
    Rounding = 100,
    Callback = function(value)
        print("Tốc Độ Tấn Công được đặt thành: " .. value .. " km/h")
    end
})

local SectionAutoFarm = TabCombat:AddSection("Tự Động Farm")

SectionAutoFarm:AddToggle("Auto Farm Level", {
    Text = "Bật/Tắt Auto Farm Level",
    Default = false,
    Callback = function(state)
        if state then
            print("Auto Farm Level đã được BẬT")
        else
            print("Auto Farm Level đã được TẮT")
        end
    end
})

SectionAutoFarm:AddDropdown("Farm Target", {
    Text = "Mục Tiêu Farm",
    Values = {"Quái Gần Nhất", "Quái Yếu Nhất", "Boss"},
    Default = "Quái Gần Nhất",
    Callback = function(value)
        print("Mục Tiêu Farm được chọn: " .. value)
    end
})

-- Tab Trái Ác Quỷ & Raid
local TabFruitRaid = DDZ_UI:AddTab("Trái Ác Quỷ / Raid")

local SectionFruit = TabFruitRaid:AddSection("Quản Lý Trái Ác Quỷ")
SectionFruit:AddToggle("Auto Fruit Sniper", {
    Text = "Bật/Tắt Auto Fruit Sniper",
    Default = false,
    Callback = function(state)
        print("Auto Fruit Sniper: " .. tostring(state))
    end
})
SectionFruit:AddToggle("Auto Store Fruit", {
    Text = "Tự Động Cất Trái",
    Default = false,
    Callback = function(state)
        print("Auto Store Fruit: " .. tostring(state))
    end
})

local SectionRaid = TabFruitRaid:AddSection("Tự Động Raid")
SectionRaid:AddToggle("Auto Join Raid", {
    Text = "Tự Động Tham Gia Raid",
    Default = false,
    Callback = function(state)
        print("Auto Join Raid: " .. tostring(state))
    end
})
SectionRaid:AddToggle("Auto Start Raid", {
    Text = "Tự Động Bắt Đầu Raid",
    Default = false,
    Callback = function(state)
        print("Auto Start Raid: " .. tostring(state))
    end
})

-- Tab Dịch Chuyển
local TabTeleport = DDZ_UI:AddTab("Dịch Chuyển")
local SectionTeleport = TabTeleport:AddSection("Điểm Dịch Chuyển")
SectionTeleport:AddDropdown("Teleport Location", {
    Text = "Chọn Địa Điểm",
    Values = {"Đảo Khởi Đầu", "Đảo Hải Tặc", "Đảo Marine", "Cổng Raid"},
    Default = "Đảo Khởi Đầu",
    Callback = function(value)
        print("Dịch chuyển đến: " .. value)
    end
})

-- Tab Race V4
local TabRaceV4 = DDZ_UI:AddTab("Race V4")
local SectionRaceV4 = TabRaceV4:AddSection("Quản Lý Race V4")
SectionRaceV4:AddToggle("Auto Start Race V4", {
    Text = "Tự Động Bắt Đầu Race V4",
    Default = false,
    Callback = function(state)
        print("Auto Start Race V4: " .. tostring(state))
    end
})
SectionRaceV4:AddToggle("Auto Upgrade Race V4", {
    Text = "Tự Động Nâng Cấp Race V4",
    Default = false,
    Callback = function(state)
        print("Auto Upgrade Race V4: " .. tostring(state))
    end
})

-- Tab Sea (Biển)
local TabSea = DDZ_UI:AddTab("Biển")
local SectionSea = TabSea:AddSection("Sự Kiện Biển")
SectionSea:AddToggle("Auto Sea Beast", {
    Text = "Tự Động Săn Sea Beast",
    Default = false,
    Callback = function(state)
        print("Auto Sea Beast: " .. tostring(state))
    end
})
SectionSea:AddToggle("Auto Ship Raid", {
    Text = "Tự Động Tham Gia Ship Raid",
    Default = false,
    Callback = function(state)
        print("Auto Ship Raid: " .. tostring(state))
    end
})

-- Tab Fish (Câu Cá)
local TabFish = DDZ_UI:AddTab("Câu Cá")
local SectionFish = TabFish:AddSection("Tính Năng Câu Cá")
SectionFish:AddToggle("Auto Fish", {
    Text = "Tự Động Câu Cá",
    Default = false,
    Callback = function(state)
        print("Auto Fish: " .. tostring(state))
    end
})

-- Tab Player (Người Chơi)
local TabPlayer = DDZ_UI:AddTab("Người Chơi")
local SectionPlayer = TabPlayer:AddSection("Tính Năng Người Chơi")
SectionPlayer:AddToggle("Player ESP", {
    Text = "Hiển Thị Vị Trí Người Chơi",
    Default = false,
    Callback = function(state)
        print("Player ESP: " .. tostring(state))
    end
})
SectionPlayer:AddToggle("Auto PvP", {
    Text = "Tự Động PvP",
    Default = false,
    Callback = function(state)
        print("Auto PvP: " .. tostring(state))
    end
})

-- Tab Cài Đặt Chung
local TabSettings = DDZ_UI:AddTab("Cài Đặt Chung")
TabSettings:AddLabel("Thông Tin Script"):AddParagraph("Phiên bản: 1.0\nNgười tạo: DDZ\nNgôn ngữ: Tiếng Việt")

-- Thông báo khi chạy script
Library:Notify("DDZ loading!", 5)

