@echo off
echo ========================================
echo  Deploy yourewardcard to GitHub
echo ========================================
echo.
echo STEP 1: Create a new repo on GitHub first!
echo   - Go to https://github.com/new
echo   - Repository name: Yourrewardcard  (capital Y)
echo   - Leave it empty (no README). Create.
echo.
set /p USERNAME="Enter your GitHub username: "
cd /d "%~dp0"

if not exist .git (
  git init
  git add .
  git commit -m "yourewardcard site - ready for Vercel"
  git branch -M main
  git remote add origin https://github.com/%USERNAME%/Yourrewardcard.git
  git push -u origin main
) else (
  git add .
  git status
  git commit -m "Update yourewardcard site" 2>nul
  git remote 2>nul | findstr /C:"origin" >nul || git remote add origin https://github.com/%USERNAME%/Yourrewardcard.git
  git branch -M main 2>nul
  git push -u origin main
)

echo.
echo Done! Next: connect this repo to Vercel (see NEXT-STEPS.md).
pause
