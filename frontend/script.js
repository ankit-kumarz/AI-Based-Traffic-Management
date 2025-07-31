// DOM elements
const uploadForm = document.getElementById('uploadForm');
const fileInput = document.getElementById('fileInput');
const placeholder = document.getElementById('placeholder');
const loader = document.getElementById('loader');
const results = document.getElementById('results');
const error = document.getElementById('error');
const errorMessage = document.getElementById('error-message');

// API endpoint
const API_URL = 'http://localhost:5000/upload';

// Event listeners
uploadForm.addEventListener('submit', handleSubmit);

// Handle form submission
async function handleSubmit(e) {
    e.preventDefault();
    
    const selectedFiles = Array.from(fileInput.files);
    
    // Validate file count
    if (selectedFiles.length !== 4) {
        alert('Please upload exactly 4 videos.');
        return;
    }
    
    // Show loading state
    showLoading();
    
    try {
        const formData = new FormData();
        selectedFiles.forEach(file => formData.append('videos', file));
        
        const response = await fetch(API_URL, {
            method: 'POST',
            body: formData
        });
        
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        
        const result = await response.json();
        
        if (result.error) {
            showError(result.error);
        } else {
            showResults(result);
        }
        
    } catch (error) {
        console.error('Error uploading files:', error);
        showError('Failed to upload files. Please try again.');
    }
}

// Show loading state
function showLoading() {
    placeholder.style.display = 'none';
    loader.style.display = 'block';
    results.style.display = 'none';
    error.style.display = 'none';
}

// Show results
function showResults(result) {
    placeholder.style.display = 'none';
    loader.style.display = 'none';
    results.style.display = 'block';
    error.style.display = 'none';
    
    // Update result values
    document.getElementById('north-time').textContent = result.north;
    document.getElementById('south-time').textContent = result.south;
    document.getElementById('west-time').textContent = result.west;
    document.getElementById('east-time').textContent = result.east;
}

// Show error
function showError(message) {
    placeholder.style.display = 'none';
    loader.style.display = 'none';
    results.style.display = 'none';
    error.style.display = 'block';
    
    errorMessage.textContent = message;
}

// Reset form and show placeholder
function resetForm() {
    uploadForm.reset();
    placeholder.style.display = 'block';
    loader.style.display = 'none';
    results.style.display = 'none';
    error.style.display = 'none';
}

// Add file input change listener to show selected files count
fileInput.addEventListener('change', function() {
    const selectedFiles = Array.from(this.files);
    console.log(`Selected ${selectedFiles.length} files`);
}); 