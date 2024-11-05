# Rynus Client Auto-Restart Script

This script is designed to automatically restart the Rynus Worker Client every 3 hours. It stops the application if it's currently running, waits briefly, and then starts it again. This process repeats indefinitely, with a customizable interval.

## Requirements

1. **Rynus Client Installation**:
   - Ensure the Rynus Worker Client is installed on your computer.
   - By default, this script assumes the application is located at:
     ```
     C:\Users\YOUR_USERNAME\AppData\Roaming\RYNUS\RYNUS Worker\RYNUS Worker client.exe
     ```
   - Replace `YOUR_USERNAME` in the script with your actual Windows username if different.

2. **Configuration Loaded**:
   - Make sure that the Rynus Worker Client is configured and ready to run.
   - Verify that all required settings and configurations for the client are correctly set up before running this script.

## Script Details

- **File Name**: `restart_rynus.bat`
- **Default Restart Interval**: 3 hours (10800 seconds)
- **Customization**:
  - The path to the Rynus executable and the restart interval can be modified using variables at the beginning of the script:
    - `USER_NAME`: Set your Windows username here.
    - `RYNUS_PATH`: Full path to the Rynus Worker Client executable.
    - `RESTART_INTERVAL`: Time interval for restarting the client, in seconds (3 hours by default).

## Usage

1. **Edit the Script**:
   - Open `restart_rynus.bat` in a text editor.
   - Set the `USER_NAME` variable to your actual Windows username, if different.
   - Adjust `RESTART_INTERVAL` if you want a different restart interval.

2. **Run the Script**:
   - Double-click `restart_rynus.bat` to start the script.
   - Keep the Command Prompt window open (minimized if needed) to allow the script to run indefinitely.

3. **Behavior**:
   - The script checks if the Rynus Worker Client executable exists at the specified path.
   - If the file is found, the script stops and restarts the application every 3 hours.
   - If the file is missing, the script will display an error and retry every 60 seconds.

## Troubleshooting

- **Script Cannot Find the Rynus Client**:
  - If you see the error message `RYNUS Worker client not found`, ensure the path to the executable (`RYNUS_PATH`) is correct.
  - Double-check that the Rynus Worker Client is installed and located at the specified path.

- **Changing the Restart Interval**:
  - Modify the `RESTART_INTERVAL` variable in seconds. For example, to set a 2-hour interval, use `7200`.

## Example of Customization

To run the script with a username of `JohnDoe` and a 2-hour interval, update the script as follows:

```batch
set "USER_NAME=JohnDoe"
set "RESTART_INTERVAL=7200"
