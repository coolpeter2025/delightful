@echo off
echo Starting GitHub push process for Vercel fixes...

cd /d %~dp0

echo Checking Git status...
git status

echo Adding all files to Git...
git add .

echo Committing changes...
git commit -m "Fix Vercel build errors - remove invalid config option and update contact page component"

echo Setting remote repository...
git remote set-url origin https://github.com/coolpeter2025/delightful.git

echo Pushing to GitHub master branch...
git push -u origin master

echo If master branch fails, trying main branch...
git push -u origin main

echo GitHub push process completed.
