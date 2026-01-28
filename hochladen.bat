@echo off
cd /d "%~dp0"
echo .

:: 1. Stage everything first (this fixes the "unstaged changes" error)
git add .

:: 2. Pull changes from GitHub (using merge here is safer for simple batch scripts)
git pull origin main --no-rebase

:: 3. Commit your work
git commit -m "Corinne"

:: 4. Push to the internet
git push origin main

echo .
echo Abgeschlossen. In einigen Minuten auch im Internet aktualisiert.
pause