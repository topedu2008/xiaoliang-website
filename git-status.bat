@echo off
REM 查看当前 Git 状态和分支信息

echo ========================================
echo Git Status for xiaoliang-website
echo ========================================
echo.

echo [Current Branch]
git branch --show-current
echo.

echo [Uncommitted Changes]
git status --short
echo.

echo [Recent Commits (codebuddy)]
git log codebuddy -5 --oneline --decorate
echo.

echo [Main Branch Status]
git log main..codebuddy --oneline
echo.

echo [Need to Sync with Main?]
if "%errorlevel%"=="0" (
    echo Yes: codebuddy is ahead of main
) else (
    echo No: codebuddy is up to date with main
)
echo.

echo [Tracking Branch]
git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>nul
if errorlevel 1 (
    echo Not tracking remote branch yet
)
echo.

echo ========================================
echo Quick Commands:
echo   .\sync-main.bat      - Sync main to codebuddy
echo   .\push-codebuddy.bat - Push to GitHub
echo   .\create-pr.bat      - Create Pull Request
echo ========================================
echo.
pause
