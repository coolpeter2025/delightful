@echo off
echo Starting GitHub push process...

cd /d %~dp0

echo Checking Git status...
git status

echo Adding all files to Git...
git add .

echo Committing changes...
git commit -m "Initial commit of Delightful Bean website"

echo Setting remote repository...
git remote set-url origin https://github.com/coolpeter2025/delightful.git

echo Pushing to GitHub master branch...
git push -u origin master

echo If master branch fails, trying main branch...
git push -u origin main

echo GitHub push process completed.
