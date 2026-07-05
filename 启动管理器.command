#!/bin/bash
# macOS 启动多账号管理器:启动后端并打开前端页面
# 首次使用需赋可执行权限:chmod +x *.command
cd "$(dirname "$0")" || exit 1

# 从 config.json 读端口(缺失则默认 7788)
PORT=$(node -e "try{process.stdout.write(String(require('./config.json').manager_port||7788))}catch(e){process.stdout.write('7788')}" 2>/dev/null || echo 7788)

# 后台启动后端
node manager.js &
sleep 1
open "http://127.0.0.1:${PORT}"
