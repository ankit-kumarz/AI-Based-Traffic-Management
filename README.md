# AI-Based Traffic Management System

An Intelligent Traffic Management System that uses AI to analyze traffic videos and optimize traffic light timings for better traffic flow.  


## 🚀 Demo  
<a href="https://youtu.be/apccSZ6sDcw" target="_blank">
  <img src="https://img.shields.io/badge/Watch%20Demo-YouTube-red?style=for-the-badge&logo=youtube" alt="Watch Demo">
</a> 


## 🚀 Quick Start:
 
### Prerequisites 
- Python 3.7 or higher 
- Modern web browser (Chrome, Firefox, Safari, Edge)

### 🎯 Easiest Way to Start (Recommended)
 
#### Windows Users:
```bash
# Double-click the start_project.bat file
# OR run from command line:
start_project.bat
```
 
#### Linux/Mac Users:
```bash
# Make the script executable (first time only)
chmod +x start_project.sh

# Run the startup script
./start_project.sh
```
 
### 🔧 Manual Setup

#### 1. Backend Setup

```bash 
# Navigate to backend directory 
cd backend

# Install Python dependencies
pip install -r requirements.txt

# Start the backend server 
python app.py
```

The backend will start on `http://localhost:5000`

#### 2. Frontend Setup

The frontend is now a vanilla HTML/CSS/JS application. You can run it in several ways:
  
##### Option A: Using Python's built-in server (Recommended) 
```bash  
# Navigate to frontend directory 
cd frontend 

# Start the HTTP server
python -m http.server 8000
```
Then open `http://localhost:8000` in your browser 
 
##### Option B: Direct file opening
Simply double-click `frontend/index.html` to open it in your browser

##### Option C: Using Live Server (VS Code)
1. Install "Live Server" extension in VS Code
2. Right-click on `frontend/index.html`
3. Select "Open with Live Server"

### 3. Test Connection (Optional)

To verify everything is working correctly, you can test the connection:  
 
```bash
# Open the connection test page
http://localhost:8000/test_connection.html
```

This will automatically test both backend and frontend connections.

### 4. Usage

1. Open the main application: `http://localhost:8000/index.html`
2. Click "Choose Files" and select exactly 4 video files showing different roads at an intersection
3. Click "Run Model" to process the videos 
4. Wait for the AI analysis (may take a few minutes)
5. View the optimized traffic light timings for each direction

## 📁 Project Structure 

```
AI-Based-Traffic-Management-SIH-main/
├── backend/
│   ├── app.py              # Flask server
│   ├── algo.py             # Traffic optimization algorithm
│   ├── yolov4.py           # YOLO object detection
│   ├── yolov4_Recording.py # Video processing utilities
│   ├── requirements.txt    # Python dependencies 
│   ├── yolov4-tiny.cfg     # YOLO configuration
│   ├── yolov4-tiny.weights # YOLO model weights
│   └── classes.txt         # Object classes
├── frontend/
│   ├── index.html          # Main HTML file
│   ├── styles.css          # CSS styles
│   ├── script.js           # JavaScript functionality
│   └── README-VANILLA.md   # Frontend documentation
└── README.md               # This file
```

## 🔧 Features

### Backend (Python/Flask)
- ✅ YOLO-based vehicle detection
- ✅ Traffic density analysis
- ✅ Intelligent traffic light timing optimization
- ✅ RESTful API with CORS support 
- ✅ File upload handling 

### Frontend (Vanilla HTML/CSS/JS)
- ✅ Modern, responsive UI
- ✅ File upload with validation
- ✅ Real-time loading states
- ✅ Error handling and display
- ✅ No build process required
- ✅ Works in any modern browser

## 🌐 API Endpoints 

### POST /upload
- **Purpose**: Upload and analyze traffic videos
- **Content-Type**: multipart/form-data
- **Parameters**: 
  - `videos`: Array of 4 video files 
- **Response**: JSON with optimized traffic light timings
  ```json
  {
    "north": 30,
    "south": 25,
    "west": 20,
    "east": 35
  }
  ```

## 🛠️ Technical Details:
 
### Backend Technologies
- **Flask**: Web framework
- **OpenCV**: Computer vision and video processing
- **YOLO**: Real-time object detection 
- **NumPy/SciPy**: Mathematical computations
- **Flask-CORS**: Cross-origin resource sharing 

### Frontend Technologies 
- **HTML5**: Structure
- **CSS3**: Styling with responsive design
- **Vanilla JavaScript**: Interactivity and API communication
- **Fetch API**: HTTP requests
 
## 🚨 Troubleshooting
 
### Common Issues

1. **Backend won't start** 
   - Ensure Python 3.7+ is installed
   - Install all requirements: `pip install -r requirements.txt`
   - Check if port 5000 is available

2. **Frontend can't connect to backend**
   - Verify backend is running on `http://localhost:5000` 
   - Check browser console for CORS errors
   - Ensure both servers are running simultaneously 
 
3. **File upload fails** 
   - Select exactly 4 video files
   - Ensure videos are in supported formats (MP4, AVI, etc.)
   - Check file sizes (should be reasonable for upload)

4. **Processing takes too long**
   - Video processing depends on file size and length
   - Larger videos take more time to analyze
   - Check backend console for progress updates

### Browser Compatibility
- Chrome 60+
- Firefox 55+
- Safari 11+
- Edge 79+

## 📝 Development

### Adding New Features
1. **Backend**: Modify `app.py` for new endpoints, `algo.py` for algorithm changes
2. **Frontend**: Edit `script.js` for new functionality, `styles.css` for UI changes

### Testing
- Backend: Test API endpoints with tools like Postman
- Frontend: Use browser developer tools for debugging


## 🤝 Contributing

1. Fork the repository
2. Create a feature branch 
3. Make your changes
4. Test thoroughly 
5. Submit a pull request

--- 

## Contact-

For any questions or feedback, feel free to contact:

Author: Ankit kumar

Email: ankitrajj1068@gmail.com

GitHub: [https://github.com/ankit-kumarz/] 

**Note**: Make sure both backend and frontend are running simultaneously for the application to work properly! 
