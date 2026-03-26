@echo off
REM 创建 Pull Request 到 main 分支
REM 需要先安装 GitHub CLI: https://cli.github.com/

echo ========================================
echo Creating Pull Request to main...
echo ========================================

REM 检查是否安装了 gh
where gh >nul 2>nul
if errorlevel 1 (
    echo ERROR: GitHub CLI (gh) not installed!
    echo Please install from: https://cli.github.com/
    echo.
    echo Or create PR manually:
    echo https://github.com/topedu2008/xiaoliang-website/pull/new/codebuddy
    pause
    exit /b 1
)

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

REM 检查是否已推送
for /f "delims=" %%i in ('git rev-parse --abbrev-ref --symbolic-full-name @{u}') do set tracking_branch=%%i

if "%tracking_branch%"=="" (
    echo ERROR: Branch not pushed to remote yet!
    echo Please run: .\push-codebuddy.bat
    pause
    exit /b 1
)

REM 提示输入 PR 标题
set /p pr_title="Enter PR title (or press Enter for auto-generated): "

if "%pr_title%"=="" (
    gh pr create --base main --title "Update from codebuddy branch"
) else (
    gh pr create --base main --title "%pr_title%"
)

if errorlevel 1 (
    echo ========================================
    echo ERROR: Failed to create PR
    echo Possible reasons:
    echo   - PR already exists
    echo   - No changes to merge
    echo   - Authentication failed
    echo ========================================
    pause
    exit /b 1
)

echo ========================================
echo Pull Request created successfully!
echo ========================================
echo.
pause
