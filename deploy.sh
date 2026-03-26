#!/bin/bash
# 小亮网站自动化部署脚本
# 使用方法: ./deploy.sh "更新说明"

# 颜色输出
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 获取提交信息
COMMIT_MSG=${1:-"自动更新网站内容"}

echo -e "${YELLOW}开始部署小亮网站...${NC}"

# 检查 Git 状态
if [ -n "$(git status --porcelain)" ]; then
    echo -e "${GREEN}✓ 检测到文件变更${NC}"

    # 添加所有更改
    git add .
    echo -e "${GREEN}✓ 文件已添加到暂存区${NC}"

    # 提交
    git commit -m "$COMMIT_MSG"
    echo -e "${GREEN}✓ 提交成功: $COMMIT_MSG${NC}"

    # 推送到 GitHub
    git push origin main
    echo -e "${GREEN}✓ 已推送到 GitHub${NC}"

    # 推送到 Gitee（如果配置了）
    if git remote | grep -q "gitee"; then
        git push gitee main
        echo -e "${GREEN}✓ 已同步到 Gitee${NC}"
    fi

    echo -e "${GREEN}================================${NC}"
    echo -e "${GREEN}✓ 部署完成！${NC}"
    echo -e "${GREEN}================================${NC}"
    echo ""
    echo -e "🌐 网站地址:"
    echo -e "   GitHub Pages: https://topedu2008.github.io/xiaoliang-website/"
    echo -e "   Vercel: https://xiaoliang-website.vercel.app/"
    echo ""
    echo -e "⏳ 等待 GitHub 自动部署（约 2-3 分钟）"
else
    echo -e "${YELLOW}没有需要提交的更改${NC}"
fi
