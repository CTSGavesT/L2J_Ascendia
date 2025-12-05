@echo off
echo ============================================
echo   L2J Ascendia - FORCE Upload L2J_Ascendia_Core
echo ============================================

REM Πήγαινε στο workspace (εκεί είναι το .git)
cd /d "C:\Users\CTGavesT\Desktop\Lineage II Ascendia Project\L2J_Ascendia_workspace"

REM Git setup
git init
git branch -M main
git remote add origin https://github.com/CTSGavesT/L2J_Ascendia.git 2>nul
git remote set-url origin https://github.com/CTSGavesT/L2J_Ascendia.git

REM ΠΡΟΣΘΕΤΕΙ ΠΑΝΤΑ ΟΛΟ ΤΟΝ ΦΑΚΕΛΟ CORE — ΧΩΡΙΣ ΕΛΕΓΧΟ
echo FORCING add of L2J_Ascendia_Core...
git add -A "L2J_Ascendia_Core"

REM FORCE COMMIT ακομα κι αν δεν υπαρχουν αλλαγες
set commitmsg=FORCE update %date% %time%
echo Commit message: %commitmsg%
git commit --allow-empty -m "%commitmsg%"

REM FORCE PUSH
echo Uploading to GitHub...
git push -u origin main

echo ============================================
echo   ✔ FORCE UPLOAD COMPLETE
echo ============================================
pause
