@echo off

:: Set the Python version and installer URL
set PYTHON_VERSION=3.11.5
set PYTHON_INSTALLER_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe

:: Check if Python is installed
echo Checking for Python installation...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Downloading Python installer...
    curl -o python_installer.exe %PYTHON_INSTALLER_URL%
    echo Installing Python...
    python_installer.exe /quiet InstallAllUsers=1 PrependPath=1
    if %errorlevel% neq 0 (
        echo Failed to install Python. Exiting setup.
        exit /b 1
    )
    del python_installer.exe
) else (
    echo Python is already installed.
)

:: Ensure pip is up-to-date
echo Upgrading pip...
python -m pip install --upgrade pip

:: Install required Python libraries
echo Installing required Python libraries from requirements.txt...
if exist requirements.txt (
    python -m pip install -r requirements.txt
) else (
    echo requirements.txt not found. Please ensure it exists in the same directory as this script.
    exit /b 1
)

:: Check and install TensorFlow if not installed
echo Verifying TensorFlow installation...
python -c "import tensorflow" >nul 2>&1
if %errorlevel% neq 0 (
    echo TensorFlow is not installed. Installing TensorFlow...
    python -m pip install --upgrade tensorflow
    if %errorlevel% neq 0 (
        echo Failed to install TensorFlow. Exiting setup.
        exit /b 1
    )
) else (
    echo TensorFlow is already installed.
)

:: Ensure Streamlit is accessible
echo Verifying Streamlit installation...
python -m streamlit --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Streamlit is not installed. Installing Streamlit...
    python -m pip install streamlit
)

:: Run the Streamlit app
echo Starting the Streamlit app...
start cmd /k "python -m streamlit run app.py"

:: Wait for user input to stop the server
echo The server is running. Press any key to stop...
pause >nul

:: Stop the Streamlit server gracefully
echo Stopping the Streamlit server...
taskkill /f /im python.exe >nul 2>&1

echo Server stopped. Exiting...
exit /b
