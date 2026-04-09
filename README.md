# 歲月花跡 · Floral Seasons

> 透過花語、故事與專業諮詢，將花藝轉化為傳遞情感的橋樑。

## 專案簡介

歲月花跡是一個內容展示型花藝品牌網站，採「專人預約制」以維持高質感服務。  
視覺風格以莫蘭迪印象派色系為基調，融合清新大地色調與手繪花卉插圖。

## 技術棧

- **純 HTML / CSS / JavaScript**（無框架相依）
- Google Fonts：Noto Serif TC · EB Garamond · Noto Sans TC
- 響應式設計（桌面優先）

## 資料夾結構

```
Floral-Seasons/
├── index.html              # 首頁（主要入口）
├── README.md
├── assets/
│   ├── css/
│   │   ├── main.css        # 全域樣式、CSS 變數
│   │   ├── header.css      # Header / Nav
│   │   ├── hero.css        # Hero 區塊
│   │   ├── calendar.css    # 四季花曆
│   │   └── sections.css    # 其他區塊（monthly / recipient / cta / footer）
│   ├── js/
│   │   └── main.js         # 動畫、互動邏輯
│   └── images/
│       └── .gitkeep        # 圖片佔位（正式圖片替換後刪除）
├── pages/
│   ├── seasonal.html       # 時令之詩
│   ├── encyclopedia.html   # 花間辭典
│   ├── service.html        # 私人訂製
│   └── member.html         # 會員中心
└── .github/
    └── workflows/
        └── deploy.yml      # GitHub Pages 自動部署
```

## 快速開始

```bash
# clone 專案
git clone https://github.com/sarita645/Floral-Seasons.git
cd Floral-Seasons

# 直接用瀏覽器開啟（無需伺服器）
open index.html

# 或使用 Live Server（VS Code 擴充功能推薦）
```

## GitHub Pages 部署

本專案已設定 GitHub Actions 自動部署。  
每次推送到 `main` 分支，網站將自動更新至：

```
https://sarita645.github.io/Floral-Seasons/
```

## 品牌色系

| 名稱 | 用途 | Hex |
|------|------|-----|
| Cream | 主背景 | `#f5f0e8` |
| Parchment | 次要背景 | `#ede6d6` |
| Deep Bark | 主文字 / 按鈕 | `#5c4a35` |
| Gold | 強調色 / 標籤 | `#b8975c` |
| Mist Blue | 春季 / 海芋 | `#aec4cc` |
| Mist Lavender | 薰衣 / 桔梗 | `#c0b2d4` |
| Mist Sage | 葉材 / 尤加利 | `#a0b898` |
| Mist Wheat | 秋金 / 康乃馨 | `#ceb870` |

## 聯絡

LINE：@floralseasons  
Email：預約表單（見網站）
