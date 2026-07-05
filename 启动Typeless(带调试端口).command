#!/bin/bash
# macOS 日常启动 Typeless(带远程调试端口,供词库同步脚本/管理器抓 token)
# 首次使用需赋可执行权限:chmod +x *.command
cd "$(dirname "$0")" || exit 1

# 默认安装路径;若装在别处,请改用 config.json 的 typeless_exe,或改下面这行
TYPELESS_EXE="${TYPELESS_EXE:-/Applications/Typeless.app/Contents/MacOS/Typeless}"

if [ ! -x "$TYPELESS_EXE" ]; then
  echo "未找到 Typeless 可执行文件: $TYPELESS_EXE"
  echo "请编辑本目录下 config.json 填入 typeless_exe,或设置环境变量 TYPELESS_EXE"
  read -r -p "按回车退出…" _
  exit 1
fi

"$TYPELESS_EXE" --remote-debugging-port=9222 &
