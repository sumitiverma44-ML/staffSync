@echo off
title StaffSync Frontend Server
cd /d "%~dp0frontend"
echo Starting StaffSync React Frontend on Port 3000...
npm run dev
pause
