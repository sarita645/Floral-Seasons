#!/bin/bash
# ════════════════════════════════════════
#  歲月花跡 · GitHub 一鍵推送腳本
#  執行方式：bash setup-and-push.sh
# ════════════════════════════════════════

set -e

REPO="https://github.com/sarita645/Floral-Seasons.git"
BRANCH="main"

echo ""
echo "🌸 歲月花跡 · 開始部署流程"
echo "─────────────────────────────"

# 1. 確認 git 已安裝
if ! command -v git &> /dev/null; then
  echo "❌ 找不到 git，請先安裝：https://git-scm.com"
  exit 1
fi

# 2. 初始化（若還沒有 .git）
if [ ! -d ".git" ]; then
  echo "📁 初始化 git repo..."
  git init
  git remote add origin "$REPO"
else
  echo "✅ 已有 git repo"
  # 確認 remote 正確
  git remote set-url origin "$REPO" 2>/dev/null || git remote add origin "$REPO"
fi

# 3. 設定預設 branch
git checkout -B "$BRANCH" 2>/dev/null || true

# 4. 加入所有檔案
echo "📦 加入所有檔案..."
git add .

# 5. Commit
echo "💬 建立 commit..."
git commit -m "feat: 歲月花跡網站初始結構

- index.html：首頁（v2，含四季花曆 + 日期區塊）
- assets/css/main.css：全域樣式 / design token
- assets/js/main.js：動畫 / 互動邏輯
- pages/：各子頁面（seasonal / encyclopedia / service / member）
- .github/workflows/deploy.yml：GitHub Pages 自動部署
- README.md：專案說明" 2>/dev/null || echo "（無新變更，略過 commit）"

# 6. Push
echo "🚀 推送到 GitHub..."
git push -u origin "$BRANCH" --force

echo ""
echo "─────────────────────────────"
echo "✅ 推送完成！"
echo ""
echo "🌐 接下來請到 GitHub 開啟 Pages："
echo "   repo → Settings → Pages"
echo "   Source: GitHub Actions"
echo ""
echo "   網站網址將會是："
echo "   https://sarita645.github.io/Floral-Seasons/"
echo "─────────────────────────────"
