@echo off
title StaffSync HR Management System - Starter
echo ============================================================
echo           STAFFSYNC - HR MANAGEMENT SYSTEM
echo ============================================================
echo.
echo Starting StaffSync Backend Server (Port 5000)...
start "StaffSync Backend" cmd /k "cd /d "%~dp0backend" && npm start"

echo.
echo Starting StaffSync Frontend Server (Port 3000)...
start "StaffSync Frontend" cmd /k "cd /d "%~dp0frontend" && npm run dev"

echo.
echo Waiting for servers to initialize...
timeout /t 4 /nobreak > nul

echo Opening StaffSync in your default browser...
start http://localhost:3000

echo.
echo ============================================================
echo  StaffSync is now running!
echo  Frontend URL: http://localhost:3000
echo  Backend URL:  http://localhost:5000
echo.
echo  Demo Credentials:
echo   - Admin:    admin@staffsync.com    / admin123
echo   - HR:       hr@staffsync.com       / hr123
echo   - Employee: employee@staffsync.com / emp123
echo ============================================================
pause
