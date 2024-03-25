@echo off
SETLOCAL ENABLEEXTENSIONS

set "scriptName=script_write"
set "scriptPath=%~dp0%scriptName%.py"
set "exePath=%~dp0%scriptName%.exe"
set "regPath=HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set "valueName=ScriptWriteAutoStart"

:menu
cls
echo 1. Install pip packages
echo 2. Convert .py to .exe
echo 3. Add auto run script
echo 4. Delete auto run
echo.
echo Please choose an option:

set /p option=
if "%option%"=="1" goto installpip
if "%option%"=="2" goto convert
if "%option%"=="3" goto addautorun
if "%option%"=="4" goto deleteautorun
goto end

:installpip
echo Installing keyboard and pyinstaller...
call pip install keyboard pyinstaller
echo Packages installed.
timeout 2
goto menu

:convert
call pyinstaller --onefile --noconsole "%scriptPath%"
if exist "%exePath%" del /f /q "%exePath%"
if exist ".\dist\%scriptName%.exe" move ".\dist\%scriptName%.exe" "%~dp0"
if exist ".\build" rmdir /s /q ".\build"
if exist ".\dist" rmdir /s /q ".\dist"
if exist "%scriptName%.spec" del /f /q "%scriptName%.spec"
echo Conversion complete.
timeout 2
goto menu

:addautorun
reg add "%regPath%" /v "%valueName%" /t REG_SZ /d "\"%exePath%\"" /f
echo Auto run script added.
timeout 2
goto menu

:deleteautorun
reg delete "%regPath%" /v "%valueName%" /f
echo Auto run script deleted.
timeout 2
goto menu

:end
echo Operation completed.
pause
