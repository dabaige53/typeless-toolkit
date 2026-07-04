@echo off
chcp 65001 >nul
cd /d "%~dp0"
REM 词库跨账号同步:导出当前账号词库到主 CSV,再把主 CSV 缺的词导入当前账号
node typeless-dict-sync.js
echo.
pause
