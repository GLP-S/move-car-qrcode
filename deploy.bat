@echo off
chcp 65001 >nul
cd /d %~dp0
echo ========================================
echo   挪车牌 - 同步到 GitHub Pages 公网
echo ========================================
copy /y "挪车牌二维码设计.html" "index.html" >nul
git add index.html .nojekyll deploy.bat
git commit -m "update parking move-card page"
git push
echo.
echo ==== 同步完成，约 1 分钟后线上生效 ====
pause
