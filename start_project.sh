#!/bin/bash

echo "Starting AI Traffic Management System..."
echo

echo "Starting Backend Server (Python/Flask)..."
cd backend
python app.py &
BACKEND_PID=$!

echo "Waiting 3 seconds for backend to start..."
sleep 3

echo "Starting Frontend Server (HTTP Server)..."
cd ../frontend
python -m http.server 8000 &
FRONTEND_PID=$!

echo
echo "========================================"
echo "🚀 Project Started Successfully!"
echo "========================================"
echo
echo "Backend: http://localhost:5000"
echo "Frontend: http://localhost:8000"
echo
echo "Open your browser and go to: http://localhost:8000"
echo
echo "Press Ctrl+C to stop both servers..."

# Function to cleanup on exit
cleanup() {
    echo "Stopping servers..."
    kill $BACKEND_PID 2>/dev/null
    kill $FRONTEND_PID 2>/dev/null
    exit 0
}

# Set trap to cleanup on script exit
trap cleanup SIGINT SIGTERM

# Wait for user to stop
wait 