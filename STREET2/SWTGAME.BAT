@echo off
:start
cls
echo.
echo Welcome to Street Fighter II.
echo.
echo  Choose one of the selections below:
echo.
echo     1. Run Street Fighter II 
echo          with Sound Blaster A220 D1 I5 Sound Card Settings
echo     2. Run Street Fighter II 
echo          with Sound Blaster A220 D1 I7 Sound Card Settings
echo     3. Run Street Fighter II 
echo          with No Sound
echo     4. Run Street Fighter II 
echo          with Internal Speaker
echo     5. Quit.
echo.
echo     Please enter the number for your choice:
query

if errorlevel = 6 goto invalid
if errorlevel = 5 goto quit 
if errorlevel = 4 goto speaker
if errorlevel = 3 goto nosound
if errorlevel = 2 goto d1i7
if errorlevel = 1 goto d1i5

:invalid
cls
echo Invalid option
goto start
goto end

REM Run Nosound game   
:nosound
cd nosound 
sf2.exe
cd ..
goto end


REM Run PC Speaker game   
:speaker
cd speaker 
sf2.exe
goto end

REM Run d1i5 game
:d1i5
cd d1i5
sf2.exe
goto end

REM Run d1i7 game   
:d1i7
cd d1i7
sf2.exe
goto end

goto end 
:quit
:end
