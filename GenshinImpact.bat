@echo off
title Genshin Impact - Custom Resolution
cls

if exist GenshinImpact.exe (
	mode con:cols=50 lines=15
	goto main
) else (
	mode con:cols=73 lines=7
	echo.
	echo  Unable to locate GenshinImpact.exe!
	echo  Make sure to place this script in the same folder as GenshinImpact.exe!
	echo.
	echo.
	echo  Press any key to close the script...
	pause > nul
	exit

:main
cls
echo ==================================================
echo  Genshin Impact    (width: %screenWidth% - height: %screenHeight%)
echo ==================================================
echo.
echo  S. Set custom resolution
echo  U. Use presets
echo.
echo  L. Launch the game
echo.
echo  A. About this script
echo.
echo ==================================================
echo.
set /p i=Input: 
if /i "%i%" == "S" (
	set "i="
	goto resolution_manual
)
if /i "%i%" == "U" (
	set "i="
	goto resolution_presets
)
if /i "%i%" == "L" (
	set "i="
	GenshinImpact.exe -screen-width %screenWidth% -screen-height %screenHeight%
	exit
)
if /i "%i%" == "A" (
	set "i="
	goto about_script
) else (
	set "i="
	goto main
)

:resolution_manual
cls
echo ==================================================
echo  Genshin Impact    (width: %screenWidth% - height: %screenHeight%)
echo ==================================================
echo.
set /p screenWidth=Set width : 
set /p screenHeight= Set height: 
goto main

:resolution_presets
cls
echo ==================================================
echo  Genshin Impact    (width: %screenWidth% - height: %screenHeight%)
echo ==================================================
echo.
echo   1. 3840 x 2160 (16:9)     5. 1280 x 720 (16:9)
echo   2. 2560 x 1440 (16:9)     6. 1024 x 576 (16:9)
echo   3. 1920 x 1080 (16:9)     7. 960 x 540 (16:9)
echo   4. 1366 x 768 (16:9)      8. 854 x 480 (16:9)
echo   9. 960 x 1080 (16:9)
echo.
echo   0. Back
echo.
echo ==================================================
echo.
set /p i=Input: 
if "%i%" == "1" (
	set "i="
	set "screenWidth=3840"
	set "screenHeight=2160"
	goto main
)
if "%i%" == "2" (
	set "i="
	set "screenWidth=2560"
	set "screenHeight=1440"
	goto main
)
if "%i%" == "3" (
	set "i="
	set "screenWidth=1920"
	set "screenHeight=1080"
	goto main
)
if "%i%" == "4" (
	set "i="
	set "screenWidth=1366"
	set "screenHeight=768"
	goto main
)
if "%i%" == "5" (
	set "i="
	set "screenWidth=1280"
	set "screenHeight=720"
	goto main
)
if "%i%" == "6" (
	set "i="
	set "screenWidth=1024"
	set "screenHeight=576"
	goto main
)
if "%i%" == "7" (
	set "i="
	set "screenWidth=960"
	set "screenHeight=540"
	goto main
)
if "%i%" == "8" (
	set "i="
	set "screenWidth=854"
	set "screenHeight=480"
	goto main
)
if "%i%" == "9" (
	set "i="
	set "screenWidth=960"
	set "screenHeight=1080"
	goto main
)
if "%i%" == "0" (
	set "i="
	goto main
) else (
	set "i="
	goto resolution_presets
)

:about_script
cls
echo ==================================================
echo  Genshin Impact    (width: %screenWidth% - height: %screenHeight%)
echo ==================================================
echo.
echo  This is a simple Windows batch script to launch
echo  Genshin Impact at custom resolution.
echo.
echo.
echo.
echo.
echo.
echo  -Shiro39-
echo.
echo Press any key to go back to the main menu...
pause > nul
goto main
