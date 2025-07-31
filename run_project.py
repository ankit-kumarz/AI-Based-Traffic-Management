import subprocess
import time
import threading
import os
import sys
import webbrowser
from pathlib import Path

def start_backend():
    """Start the Flask backend server"""
    backend_dir = Path(__file__).parent / "backend"
    os.chdir(backend_dir)
    print("🚀 Starting Backend Server...")
    subprocess.run([sys.executable, "app.py"])

def start_frontend():
    """Start the HTTP frontend server"""
    frontend_dir = Path(__file__).parent / "frontend"
    os.chdir(frontend_dir)
    print("🚀 Starting Frontend Server...")
    subprocess.run([sys.executable, "-m", "http.server", "8000"])

def main():
    print("=" * 50)
    print("🚗 AI Traffic Management System")
    print("=" * 50)
    
    # Start backend in a separate thread
    backend_thread = threading.Thread(target=start_backend, daemon=True)
    backend_thread.start()
    
    # Wait a moment for backend to start
    time.sleep(3)
    
    # Start frontend in a separate thread
    frontend_thread = threading.Thread(target=start_frontend, daemon=True)
    frontend_thread.start()
    
    # Wait a moment for frontend to start
    time.sleep(2)
    
    print("\n" + "=" * 50)
    print("✅ Both servers are now running!")
    print("=" * 50)
    print("🌐 Backend: http://localhost:5000")
    print("🌐 Frontend: http://localhost:8000")
    print("🌐 Main App: http://localhost:8000/index.html")
    print("🌐 Test Page: http://localhost:8000/test_connection.html")
    print("\nOpening the main application in your browser...")
    
    # Open the main app in browser
    webbrowser.open("http://localhost:8000/index.html")
    
    print("\nPress Ctrl+C to stop both servers...")
    
    try:
        # Keep the main thread alive
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\n🛑 Stopping servers...")
        sys.exit(0)

if __name__ == "__main__":
    main() 