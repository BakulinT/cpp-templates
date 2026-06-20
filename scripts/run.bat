@echo off

set TYPE=%1
if "%TYPE%"=="" set TYPE=Debug

if /I "%TYPE%"=="Debug" (
    set BUILD_DIR=build\debug\bin\Debug
) else if /I "%TYPE%"=="Release" (
    set BUILD_DIR=build\release\bin\Release
) else (
    echo Unknown build type '%TYPE%', usage: Debug^|Release
    exit /b 1
)

set EXE_NAME=%2
if "%EXE_NAME%"=="" set EXE_NAME=bkup-cli.exe

set EXE_PATH=%BUILD_DIR%\%EXE_NAME%

if not exist "%EXE_PATH%" (
    echo Executable not found: %EXE_PATH%
    exit /b 1
)

echo.
echo Running %EXE_PATH%
echo.
echo.
"%EXE_PATH%"
endlocal