@echo off
REM 一键推送 codebuddy 分支到 GitHub

echo ========================================
echo Pushing codebuddy branch to GitHub...
echo ========================================

REM 检查当前分支
for /f "delims=" %%i in ('git branch --show-current') do set current_branch=%%i

if "%current_branch%"=="codebuddy" (
    echo Current branch: codebuddy
) else (
    echo ERROR: Not on codebuddy branch!
    echo Please run: git checkout codebuddy
    pause
    exit /b 1
)

REM 推送代码
git push origin codebuddy
if errorlevel 1 (
    echo ========================================
    echo ERROR: Push failed!
    echo.
    echo Possible solutions:
    echo 1. Check your network connection
    echo 2. Close VPN/Proxy if running
    echo 3. Try again later
    echo.
    echo You can also manually run:
    echo   git push origin codebuddy
    echo ========================================
    pause
    exit /b 1
)

echo ========================================
echo Push completed successfully!
echo ========================================
echo.
echo Next step:
echo   Visit: https://github.com/topedu2008/xiaoliang-website/pull/new/codebuddy
echo   Create a Pull Request to merge codebuddy into main
echo.
pause
