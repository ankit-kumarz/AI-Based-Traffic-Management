Write-Host "Starting AI Traffic Management System..." -ForegroundColor Green
Write-Host ""

Write-Host "Starting Backend Server (Python/Flask)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\backend'; python app.py" -WindowStyle Normal

Write-Host "Waiting 3 seconds for backend to start..." -ForegroundColor Cyan
Start-Sleep -Seconds 3

Write-Host "Starting Frontend Server (HTTP Server)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\frontend'; python -m http.server 8000" -WindowStyle Normal

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "🚀 Project Started Successfully!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Backend: http://localhost:5000" -ForegroundColor Cyan
Write-Host "Frontend: http://localhost:8000" -ForegroundColor Cyan
Write-Host ""
Write-Host "Open your browser and go to: http://localhost:8000" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press any key to close this window..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 