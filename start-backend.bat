@echo off
title StaffSync Backend Server
cd /d "%~dp0backend"
echo Starting StaffSync Express & MongoDB API on Port 5000...
npm start
pause
