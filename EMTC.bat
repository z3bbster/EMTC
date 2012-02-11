@ECHO OFF
CLS

REM ----------------------------------------------------------------------------------
REM --- CUSTOM VARIABLES - Edit these vars below at own will to keep them updated.
REM ----------------------------------------------------------------------------------

SET TEXTUREPACK_NAME=CraftGlimp-HD-32x32
SET TEXTUREPACK_VERSION=0.0.1A
SET TEXTUREPACK_AUTHOR=z3bbster
SET TEXTUREPACK_HOMEPAGE=0.0.1A
SET MINECRAFT_VERSION=1.1
SET LICENSE_TYPE=Creative-Commons
SET TEXTUREPACK_STORAGE_PATH=%HOMEDRIVE%%HOMEPATH%\documents\

REM ----------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------
REM --- DONT EDIT ANYTHING AFTER THIS! ONLY IF YOU KNOW WHAT YOUR DOING!
REM ----------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------

REM ----------------------------------------------------------------------------------
REM --- MAIN VARIABLES 
REM ----------------------------------------------------------------------------------

FOR /F "tokens=2-4 delims=- " %%i in ('date /t') do (
	set DD=%%i
	set MM=%%j
	set YYYY=%%k
)
FOR /F "tokens=1-3 delims=: " %%i in ('echo %time%') do (
	set SS=%%i
	set MN=%%j
	set HH=%%k
)


REM #### FOLDER STRUCTURE #####

MD %TEXTUREPACK_STORAGE_PATH%\%TEXTUREPACK_NAME%
CD %TEXTUREPACK_STORAGE_PATH%\%TEXTUREPACK_NAME%
MD achievement anim armor art environment font gui item misc mob\enderdragon mob\villager terrain title\bg


REM #### FOLDER STRUCTURE #####

REM Changelog.txt creation
ECHO %TEXTUREPACK_NAME% Changelog> Changelog.txt
ECHO ---------------------------------------------------------------------------------->> Changelog.txt
ECHO. >> Changelog.txt
ECHO [%TEXTUREPACK_VERSION%]>> Changelog.txt
ECHO -Created %TEXTUREPACK_NAME% texturepack on %DATE% by %TEXTUREPACK_AUTHOR%. >> Changelog.txt

REM color.properties creation
ECHO ###############################################################################> color.properties
ECHO # color.properties>> color.properties
ECHO ###############################################################################>> color.properties

REM Legal.txt creation
ECHO Legal information> Legal.txt
ECHO ---------------------------------------------------------------------------------->> Legal.txt
ECHO. >> Legal.txt
ECHO © Copyright %YYYY%, %TEXTUREPACK_AUTHOR%>> Legal.txt

REM pack.txt creation
ECHO %TEXTUREPACK_NAME% [%TEXTUREPACK_VERSION%]>> pack.txt

REM README.txt creation
ECHO %TEXTUREPACK_NAME%>README.txt
ECHO ---------------------------------------------------------------------------------->>README.txt
ECHO. >>README.txt
ECHO   Version: %TEXTUREPACK_VERSION%>>README.txt
ECHO   Author: %TEXTUREPACK_AUTHOR%>>README.txt
ECHO   Size: 32x32>>README.txt
ECHO   Compatible: Minecraft version %MINECRAFT_VERSION%>>README.txt
ECHO   Website: %TEXTUREPACK_HOMEPAGE%>>README.txt
ECHO. >>README.txt
ECHO   To check the latest changes made to %TEXTUREPACK_NAME% see the Changelog.txt file!>>README.txt
ECHO. >>README.txt
ECHO FEATURES>>README.txt
ECHO ---------------------------------------------------------------------------------->>README.txt
ECHO. >>README.txt
ECHO INSTALLATION>>README.txt
ECHO ---------------------------------------------------------------------------------->>README.txt
ECHO. >>README.txt
ECHO LICENSING>>README.txt
ECHO ---------------------------------------------------------------------------------->>README.txt
ECHO. >>README.txt
ECHO This work is provided under the %LICENSE_TYPE% License see the legal.txt for more>>README.txt
ECHO detailed version of this license.>>README.txt

REM default.properties creation
CD %TEXTUREPACK_STORAGE_PATH%\%TEXTUREPACK_NAME%\font

ECHO ###############################################################################> default.properties
ECHO # HD font - default.properties>> default.properties
ECHO ###############################################################################>> default.properties

ECHO DONE!
PAUSE