#!/bin/bash
# macOS 词库跨账号同步:导出当前账号词库到主 CSV,再把主 CSV 缺的词导入当前账号
# 首次使用需赋可执行权限:chmod +x *.command
cd "$(dirname "$0")" || exit 1
node typeless-dict-sync.js
echo
read -r -p "按回车退出…" _
