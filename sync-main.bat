@echo off
REM 同步 main 分支的最新代码到 codebuddy 分支
REM 避免与扣虾的修改产生冲突

echo ========================================
echo Syncing main branch to codebuddy...
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

REM 获取 main 分支最新代码
echo [1/3] Fetching main branch...
git fetch origin main
if errorlevel 1 (
    echo ERROR: Failed to fetch main branch
    pause
    exit /b 1
)

REM 检查是否有未提交的修改
echo [2/3] Checking for uncommitted changes...
git diff-index --quiet HEAD --
if errorlevel 1 (
    echo WARNING: You have uncommitted changes
    echo Please commit or stash your changes first
    pause
    exit /b 1
)

REM 合并 main 到 codebuddy
echo [3/3] Merging main into codebuddy...
git merge origin/main --no-edit
if errorlevel 1 (
    echo ========================================
    echo MERGE CONFLICT DETECTED!
    echo Please resolve conflicts manually:
    echo   1. Run: git status
    echo   2. Edit conflicted files
    echo   3. Run: git add .
    echo   4. Run: git commit
    echo ========================================
    pause
    exit /b 1
)

echo ========================================
echo Sync completed successfully!
echo ========================================
echo.
echo Next steps:
echo   - Make your changes
echo   - Run: git add .
echo   - Run: git commit -m "your message"
echo   - Run: .\push-codebuddy.bat
echo.
pause
