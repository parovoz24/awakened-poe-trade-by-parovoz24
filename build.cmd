@echo off
chcp 65001 >nul
echo Сборка Awakened PoE Trade (RUB). Это займёт 5-15 минут, не закрывайте окно.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0build.ps1"
echo.
pause
