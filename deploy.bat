@echo off
REM 小亮网站自动化部署脚本 (Windows)
REM 使用方法: deploy.bat "更新说明"

setlocal enabledelayedexpansion

REM 颜色代码
set GREEN=[92m
set YELLOW=[93m
set RED=[91m
set NC=[0m

REM 获取提交信息
set "COMMIT_MSG=%~1"
if "%COMMIT_MSG%"=="" set "COMMIT_MSG=自动更新网站内容"

echo %YELLOW%开始部署小亮网站...%NC%

REM 检查 Git 状态
for /f "delims=" %%i in ('git status --porcelain') do set "HAS_CHANGES=%%i"

if defined HAS_CHANGES (
    echo %GREEN%✓ 检测到文件变更%NC%

    REM 添加所有更改
    git add .
    echo %GREEN%✓ 文件已添加到暂存区%NC%

    REM 提交
    git commit -m "%COMMIT_MSG%"
    echo %GREEN%✓ 提交成功: %COMMIT_MSG%%NC%

    REM 推送到 GitHub
    git push origin main
    echo %GREEN%✓ 已推送到 GitHub%NC%

    REM 推送到 Gitee（如果配置了）
    git remote | findstr /C:"gitee" >nul
    if %errorlevel% equ 0 (
        git push gitee main
        echo %GREEN%✓ 已同步到 Gitee%NC%
    )

    echo %GREEN%================================%NC%
    echo %GREEN%✓ 部署完成！%NC%
    echo %GREEN%================================%NC%
    echo.
    echo 🌐 网站地址:
    echo    GitHub Pages: https://topedu2008.github.io/xiaoliang-website/
    echo    Vercel: https://xiaoliang-website.vercel.app/
    echo.
    echo ⏳ 等待 GitHub 自动部署（约 2-3 分钟）
) else (
    echo %YELLOW%没有需要提交的更改%NC%
)

endlocal

pause
