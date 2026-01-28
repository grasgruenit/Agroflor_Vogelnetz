@echo off
cd /d "%~dp0"
echo .

:: 1. Pull latest changes from GitHub to avoid conflicts
git pull origin main --rebase

:: 2. Add all changes, including the submodule reference
git add .

git commit -m "Corinne"
git push origin main
echo .
echo Abgeschlossen. In einigen Minuten auch im Internet aktualisiert.
pause