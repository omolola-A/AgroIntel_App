# AgroIntel_App

AgroIntelApp is a powerful tool designed to help farmers and agricultural experts identify crop diseases and pests using image recognition technology. Users can easily capture an image of an affected crop, upload it to the app, and get detailed insights on the disease or pest, along with recommended solutions.

## Features

- **Disease/Pest Detection**: Detects various crop diseases and pests from uploaded images.
- **Actionable Insights**: Provides recommended solutions to help mitigate the detected issue.
- **User-Friendly Interface**: Simple and intuitive interface built with Streamlit for ease of use.

## Requirements

To use AgroIntelApp, the following core requirements must be installed:

- **Python**: Version 3.6 or higher
- **Streamlit**: Version 1.40.1
- **TensorFlow**: Version 2.18.0
- **TensorFlow Intel**: Version 2.18.0

## Installation Guide

1. **Download the Code**:

   - Go to the [AgroIntel_App GitHub repository](https://github.com/omolola-A/AgroIntel_App/tree/main).
   - Download the repository as a ZIP file.
   - Extract the ZIP file to a folder on your PC.

2. **Setup**:

   - Inside the extracted folder, you will find a file named `setup.bat`.
   - Double-click `setup.bat` to automatically install the required dependencies and set up the environment on your system.
   - If your system warns you about running the file (via SmartScreen), trust the file and allow it to run. This is a normal occurrence during installation.
   - The installation process is a one-time setup. After the initial setup, the installation files won't download again.
   - Wait for the process to complete. The setup will launch your default web browser once finished.

3. **Run the App**:
   - After the setup is complete, the app will open in your browser.
   - Follow the on-screen instructions to upload an image of the affected crop and let the app detect the disease or pest.

## How to Use

1. **Capture an Image**: Use your device's camera to capture a clear image of the affected crop.
2. **Upload the Image**: Once the app opens in your browser, you'll be prompted to upload the image.
3. **Diagnosis**: The app will process the image and identify the disease or pest affecting the crop.
4. **Solution**: The app will provide recommended solutions to help manage or treat the identified disease or pest.

## Core Dependencies

The app requires the following Python libraries:

- **Streamlit 1.40.1**: Web app framework used to build the user interface.
- **TensorFlow 2.18.0**: Deep learning framework used for image recognition and classification.
- **TensorFlow Intel 2.18.0**: Optimized version of TensorFlow for better performance on Intel hardware.

## Troubleshooting

- **TensorFlow Installation Issues**:  
  TensorFlow might fail to install on systems with long path limitations. To resolve this:

  1. Press `Win + R`, type `regedit`, and hit Enter to open the Registry Editor.
  2. Navigate to:
     ```
     Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem
     ```
  3. Double-click on the `LongPathsEnabled` key.
  4. Set the value to `1` and click OK.
  5. Restart your system for the changes to take effect.
  6. Rerun the `setup.bat` file to complete the installation.

- **SmartScreen Warnings**:  
  If SmartScreen warns you while running the `setup.bat` file, this is expected and normal. Trust the file and proceed with the installation.

- **Error Reporting**:  
  If you encounter issues during installation or while running the app, send an email to the contacts below with details of the error:
  - **Omolola Adeojo**: [adefilaomolola@gmail.com](mailto:adefilaomolola@gmail.com)
  - **Oyekola Oluwasegun**: [Pholoy01@gmail.com](mailto:Pholoy01@gmail.com)

---

## Contributing

We welcome contributions to improve the AgroIntelApp. If you have suggestions, or bug reports, or would like to contribute code, please fork the repository and create a pull request. Ensure that your changes are well-documented and tested.

## Contact

For any inquiries or issues, don't hesitate to get in touch with the developers:

- **Omolola Adeojo**: [adefilaomolola@gmail.com](mailto:adefilaomolola@gmail.com)
- **Oyekola Oluwasegun**: [Pholoy01@gmail.com](mailto:Pholoy01@gmail.com)

## For Quick Access to AgroIntel: Go to [AgroIntel_App](https://agrointelapp.streamlit.app/).
