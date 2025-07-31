# AI Traffic Management - Vanilla HTML/CSS/JS Version

This is the converted version of the AI Traffic Management application from React to vanilla HTML, CSS, and JavaScript.

## Files Structure

```
frontend/
├── index.html          # Main HTML file
├── styles.css          # CSS styles
├── script.js           # JavaScript functionality
└── README-VANILLA.md   # This file
```

## How to Run

### 1. Start the Backend Server

First, make sure the Python backend is running:

```bash
cd backend
pip install -r requirements.txt
python app.py
```

The backend server will start on `http://localhost:5000`

### 2. Open the Frontend

Since this is now a vanilla HTML/CSS/JS application, you can simply:

1. **Double-click** the `index.html` file to open it in your browser
2. **Or** open it through a local server (recommended for development)

#### Option A: Using Python's built-in server
```bash
cd frontend
python -m http.server 8000
```
Then open `http://localhost:8000` in your browser

#### Option B: Using Node.js http-server
```bash
npm install -g http-server
cd frontend
http-server
```

#### Option C: Using Live Server (VS Code extension)
If you're using VS Code, install the "Live Server" extension and right-click on `index.html` → "Open with Live Server"

### 3. Usage

1. Open the application in your browser
2. Click "Choose Files" and select exactly 4 video files
3. Click "Run Model" to process the videos
4. Wait for the AI to analyze the traffic and provide optimized traffic light timings
5. View the results showing recommended green times for each direction

## Features

- ✅ File upload with validation (exactly 4 videos required)
- ✅ Real-time loading states
- ✅ Error handling and display
- ✅ Responsive design
- ✅ Same functionality as the React version
- ✅ No build process required
- ✅ Works directly in any modern browser

## API Endpoint

The application communicates with the backend at:
- **URL**: `http://localhost:5000/upload`
- **Method**: POST
- **Content-Type**: multipart/form-data
- **Parameters**: `videos` (array of 4 video files)

## Browser Compatibility

This application works in all modern browsers that support:
- ES6+ JavaScript features
- Fetch API
- FormData API
- File API

## Troubleshooting

1. **CORS Issues**: Make sure the backend has CORS enabled (it should be)
2. **File Upload Fails**: Ensure you're selecting exactly 4 video files
3. **Backend Connection**: Verify the backend is running on port 5000
4. **Browser Console**: Check the browser's developer console for any JavaScript errors

## Differences from React Version

- No build process required
- No npm dependencies
- Direct file execution
- Simpler deployment (just static files)
- Same functionality and UI 