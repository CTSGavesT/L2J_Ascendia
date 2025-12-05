@echo off
echo ============================================
echo   L2J Ascendia - Upload L2J_Ascendia_Core
echo ============================================

REM Go to workspace
cd /d "C:\Users\CTGavesT\Desktop\Lineage II Ascendia Project\L2J_Ascendia_workspace"

REM Make sure repo is configured (safe to run every time)
git init
git branch -M main
git remote add origin https://github.com/CTSGavesT/L2J_Ascendia.git 2>nul
git remote set-url origin https://github.com/CTSGavesT/L2J_Ascendia.git

REM Always add ALL content of L2J_Ascendia_Core
echo Staging L2J_Ascendia_Core...
git add -A "L2J_Ascendia_Core"

REM Always commit, even if nothing changed
set commitmsg=Auto upload %date% %time%
echo Commit message: %commitmsg%
git commit --allow-empty -m "%commitmsg%"

REM Push to GitHub
echo Pushing to GitHub...
git push origin main

echo ============================================
echo   DONE! L2J_Ascendia_Core uploaded.
echo ============================================
pause
