@echo off
chcp 65001 >nul
echo Упаковка релиза...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0package.ps1"
echo.
pause
