# Run this after: 1) Git is installed, 2) You created a repo at github.com/new named "yourewardcard"
# Replace YOUR_USERNAME with your GitHub username

$username = "YOUR_USERNAME"  # <-- CHANGE THIS to your GitHub username
$repo = "yourewardcard"

cd $PSScriptRoot

git init
git add .
git commit -m "YouRewardCard site"
git branch -M main
git remote add origin "https://github.com/$username/$repo.git"
git push -u origin main

Write-Host ""
Write-Host "Done! Add this repo to your host (e.g. Vercel, Netlify) to deploy." -ForegroundColor Green
