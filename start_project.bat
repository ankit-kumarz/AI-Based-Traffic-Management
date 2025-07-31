@echo off
echo Starting AI Traffic Management System...
echo.

echo Starting Backend Server (Python/Flask)...
start "Backend Server" cmd /k "cd backend && python app.py"

echo Waiting 3 seconds for backend to start...
timeout /t 3 /nobreak > nul

echo Starting Frontend Server (HTTP Server)...
start "Frontend Server" cmd /k "cd frontend && python -m http.server 8000"

echo.
echo ========================================
echo 🚀 Project Started Successfully!
echo ========================================
echo.
echo Backend: http://localhost:5000
echo Frontend: http://localhost:8000
echo.
echo Open your browser and go to: http://localhost:8000
echo.
echo Press any key to close this window...
pause > nul 