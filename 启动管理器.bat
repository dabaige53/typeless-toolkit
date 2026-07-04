@echo off
chcp 65001 >nul
cd /d "%~dp0"
REM 启动多账号管理器后端并打开前端页面(端口由 config.json 的 manager_port 控制,默认 7788)
start "" node manager.js
timeout /t 1 /nobreak >nul
start "" http://127.0.0.1:7788
