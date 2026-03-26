@echo off
REM 小亮网站自动化部署脚本 v1.8
REM 用途：推送到GitHub并触发自动部署

echo ========================================
echo   小亮网站 v1.8 自动化部署
echo ========================================
echo.

REM 检查 Git 状态
echo [1/3] 检查文件变更...
git status --short
echo.

REM 添加所有更改
echo [2/3] 添加文件到暂存区...
git add .
if %errorlevel% neq 0 (
    echo ❌ 添加文件失败
    pause
    exit /b 1
)
echo ✅ 文件已添加
echo.

REM 提交
echo [3/3] 提交并推送到 GitHub...
set COMMIT_MSG=feat: v1.8 完整更新 - PWA支持 + UI优化
git commit -m "%COMMIT_MSG%"
if %errorlevel% neq 0 (
    echo ⚠️  没有需要提交的更改
    pause
    exit /b 0
)
echo ✅ 提交成功
echo.

REM 推送到 GitHub
echo 正在推送到 GitHub...
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
) else (
    echo.
    echo ========================================
    echo   ❌ 推送失败
    echo ========================================
    echo.
    echo 可能的原因：
    echo 1. 网络连接问题
    echo 2. GitHub 访问受限
    echo 3. 认证配置问题
    echo.
    echo 建议：
    echo - 检查网络连接
    echo - 稍后重试
    echo - 或使用 GitHub Desktop 手动推送
)

echo.
pause
