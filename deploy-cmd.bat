@echo off
REM 小亮网站 CMD 部署脚本
REM 用途：推送到GitHub并触发自动部署

chcp 65001 >nul
echo ========================================
echo   小亮网站 v1.8 部署脚本
echo ========================================
echo.

echo [步骤 1/3] 检查文件变更...
cd /d "%~dp0"
git status --short
echo.

echo [步骤 2/3] 添加所有文件...
git add .
if %errorlevel% neq 0 (
    echo ❌ 添加文件失败
    pause
    exit /b 1
)
echo ✅ 文件已添加
echo.

echo [步骤 3/3] 推送到 GitHub...
echo 正在推送，请稍候...
echo.

git push origin main
if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   ✅ 部署成功！
    echo ========================================
    echo.
    echo 🌐 网站地址：
    echo    https://topedu2008.github.io/xiaoliang-website/
    echo.
    echo ⏳ 等待 GitHub 自动部署（约 2-3 分钟）
    echo.
    echo 📝 查看部署状态：
    echo    https://github.com/topedu2008/xiaoliang-website/actions
    echo.
    echo ✨ 部署完成后，刷新网页即可看到更新！
) else (
    echo.
    echo ========================================
    echo   ❌ 推送失败
    echo ========================================
    echo.
    echo 可能的原因：
    echo.
    echo 1. 网络连接问题
    echo    - 检查网络是否正常
    echo    - 尝试切换到其他网络（如手机热点）
    echo.
    echo 2. GitHub 访问受限
    echo    - 检查是否需要 VPN
    echo    - 尝试访问 https://github.com
    echo.
    echo 3. Git 配置问题
    echo    - 检查 SSH 密钥或 Token 配置
    echo    - 运行：git config --list
    echo.
    echo 建议的解决方法：
    echo.
    echo ┌─────────────────────────────────────────┐
    echo │ 方法 A：稍后重试（推荐）         │
    echo │   - 等待几分钟后重新运行此脚本    │
    echo │   - 或检查网络后再试                │
    echo └─────────────────────────────────────────┘
    echo.
    echo ┌─────────────────────────────────────────┐
    echo │ 方法 B：使用 GitHub Desktop          │
    echo │   1. 打开 GitHub Desktop           │
    echo │   2. 选择 xiaoliang-website 仓库  │
    echo │   3. 点击 "Push origin" 按钮       │
    echo └─────────────────────────────────────────┘
    echo.
    echo ┌─────────────────────────────────────────┐
    echo │ 方法 C：手动推送                   │
    echo │   1. 检查网络                    │
    echo │   2. 运行：git push origin main   │
    echo └─────────────────────────────────────────┘
)

echo.
echo 按任意键退出...
pause >nul
