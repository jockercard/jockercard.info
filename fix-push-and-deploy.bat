@echo off
cd /d "%~dp0"

echo.
echo Choose what you want:
echo   1) Push to YOUREWARDCARD repo (you created at github.com/new named "yourewardcard")
echo   2) Push to existing GC-CHECK repo (merge remote first, then push)
echo.
set /p CHOICE="Enter 1 or 2: "

if "%CHOICE%"=="1" goto yourewardcard
if "%CHOICE%"=="2" goto gccheck
echo Invalid. Run again and pick 1 or 2.
pause
exit /b

:yourewardcard
echo.
echo Switching remote to yourewardcard and pushing...
git remote set-url origin https://github.com/gccheck-balance/yourewardcard.git
git push -u origin main --force
echo.
echo Done. If you see success above, go to https://vercel.com and import repo "yourewardcard".
goto end

:gccheck
echo.
echo Pulling from gc-check then pushing...
git pull origin main --rebase
git push origin main
echo.
echo Done.
goto end

:end
pause
