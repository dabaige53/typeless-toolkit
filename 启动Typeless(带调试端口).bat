@echo off
chcp 65001 >nul
cd /d "%~dp0"
REM 日常启动 Typeless(带远程调试端口,供词库同步脚本/管理器抓 token 用)
REM 默认路径覆盖大多数安装;若你的 Typeless 装在别处,请改用 config.json 配置 typeless_exe
set "TYPELESS_EXE=%LOCALAPPDATA%\Programs\Typeless\Typeless.exe"
if not exist "%TYPELESS_EXE%" (
  echo 未找到 Typeless.exe: %TYPELESS_EXE%
  echo 请编辑本目录下 config.json,填入 typeless_exe 路径,或设置环境变量 TYPELESS_EXE
  pause
  exit /b 1
)
start "" "%TYPELESS_EXE%" --remote-debugging-port=9222
exit
