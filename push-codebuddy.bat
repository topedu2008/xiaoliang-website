@echo off
REM 推送 codebuddy 分支到 GitHub

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
    echo Possible reasons:
    echo   - Network connection issue
    echo   - Token expired
    echo   - Conflict with remote
    echo ========================================
    echo.
    echo Try: git pull origin codebuddy
    pause
    exit /b 1
)

echo ========================================
echo Push completed successfully!
echo ========================================
echo.
echo Pull Request URL:
echo https://github.com/topedu2008/xiaoliang-website/pull/new/codebuddy
echo.
echo Next step:
echo   - Visit the URL above to create a PR
echo   - Wait for kou-xia to review and merge
echo.
pause
