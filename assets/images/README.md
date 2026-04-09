# 圖片資料夾使用說明 · Image Asset Guide

## 資料夾結構

```
assets/images/
│
├── homepage/                    # 首頁專用圖
│   ├── hero/                    # Hero 區大圖（建議 1400×900px）
│   │   └── hero-main.jpg
│   ├── banners/                 # 橫幅廣告圖（建議 1440×200px）
│   └── swatches/                # 右側 2×2 圖片格（建議 600×600px 正方形）
│       ├── swatch-calla-lily.jpg     → 霧藍 · 海芋
│       ├── swatch-eustoma.jpg        → 薰衣 · 桔梗
│       ├── swatch-eucalyptus.jpg     → 煙綠 · 尤加利
│       └── swatch-carnation.jpg      → 麥穗 · 康乃馨
│
├── monthly/                     # 每月推薦主視覺
│   ├── 01-january/              → 1月 · 水仙
│   ├── 02-february/             → 2月 · 玫瑰
│   ├── 03-march/                → 3月 · 櫻花
│   ├── 04-april/                → 4月 · 海芋
│   ├── 05-may/                  → 5月 · 康乃馨
│   │   └── feature-carnation.jpg    （建議 720×900px，4:5 比例）
│   ├── 06-june/                 → 6月 · 向日葵
│   ├── 07-july/                 → 7月 · 繡球花
│   ├── 08-august/               → 8月 · 茉莉
│   ├── 09-september/            → 9月 · 文心蘭
│   ├── 10-october/              → 10月 · 大理花
│   ├── 11-november/             → 11月 · 洋桔梗
│   └── 12-december/             → 12月 · 茶花
│
└── flowers/                     # 花材資料庫圖片
    ├── spring/                  # 春季 3–5月
    │   ├── calla-lily/          海芋
    │   ├── cherry-blossom/      櫻花
    │   ├── tulip/               鬱金香
    │   ├── ranunculus/          陸蓮花
    │   ├── eustoma/             洋桔梗
    │   ├── dahlia/              大理花
    │   ├── carnation/           康乃馨
    │   └── peony/               芍藥
    │
    ├── summer/                  # 夏季 6–8月
    │   ├── sunflower/           向日葵
    │   ├── hydrangea/           繡球花
    │   ├── lotus/               荷花
    │   ├── jasmine/             茉莉
    │   ├── anthurium/           火鶴
    │   ├── water-lily/          睡蓮
    │   └── celosia/             雞冠花
    │
    ├── autumn/                  # 秋季 9–11月
    │   ├── oncidium/            文心蘭
    │   ├── osmanthus/           桂花
    │   ├── marigold/            萬壽菊
    │   ├── cosmos/              大波斯菊
    │   └── dendrobium/          秋石斛蘭
    │
    ├── winter/                  # 冬季 12–2月
    │   ├── narcissus/           水仙
    │   ├── plum-blossom/        梅花
    │   ├── camellia/            茶花
    │   ├── rose/                玫瑰
    │   ├── poinsettia/          聖誕紅
    │   └── hyacinth/            風信子
    │
    ├── foliage/                 # 葉材
    │   ├── eucalyptus/          尤加利葉
    │   ├── monstera/            龜背芋葉
    │   ├── asparagus-fern/      文竹
    │   ├── dusty-miller/        銀葉菊
    │   ├── nephrolepis/         腎蕨
    │   └── ivy/                 常春藤
    │
    └── filler/                  # 碎花果實
        ├── gypsophila/          滿天星
        ├── wax-flower/          蠟梅
        ├── fire-dragon-pearl/   火龍珠
        ├── spirea/              噴雪花
        └── millet/              小判草
```

---

## 圖片規格建議

| 用途 | 尺寸 | 格式 | 備註 |
|------|------|------|------|
| Hero 大圖 | 1440×900px | JPG / WebP | 主視覺，建議高解析 |
| Swatch 格（2×2） | 600×600px | JPG / WebP | 正方形裁切，主角居中 |
| 每月推薦 | 720×900px | JPG / WebP | 4:5 直式，適合手機 |
| 花材資料庫 | 800×800px | JPG / WebP | 白底或自然背景皆可 |

---

## 如何更換首頁 Swatch 圖片

將你的照片命名好，放入對應資料夾，網站會自動讀取：

```
assets/images/homepage/swatches/swatch-calla-lily.jpg   ← 海芋格
assets/images/homepage/swatches/swatch-eustoma.jpg      ← 桔梗格
assets/images/homepage/swatches/swatch-eucalyptus.jpg   ← 尤加利格
assets/images/homepage/swatches/swatch-carnation.jpg    ← 康乃馨格
```

**圖片還沒放時**，格子會顯示色塊底色 + 上傳提示圖示，不會破版。

---

## 如何更換每月主視覺

以 5 月康乃馨為例，將圖片放入：

```
assets/images/monthly/05-may/feature-carnation.jpg
```

然後在 `index.html` 找到 `Monthly/ImgPlaceholder`，
將 `<div class="monthly-img-frame">` 裡的 `<svg>` 換成：

```html
<img src="assets/images/monthly/05-may/feature-carnation.jpg"
     alt="五月主角 · 康乃馨"
     style="width:100%;height:100%;object-fit:cover;">
```
