@echo off
cd /d "%~dp0"
echo .
git pull
hugo server
pause