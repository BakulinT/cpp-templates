@echo off
setlocal

set TYPE=%1
if "%TYPE%"=="" set TYPE=Debug

echo -- Select type build: '%TYPE%'
if /I "%TYPE%"=="Debug" (
    set BUILD_DIR=build\debug
) else if /I "%TYPE%"=="Release" (
    set BUILD_DIR=build\release
) else (
    echo Unknown build type '%TYPE%', usage: Debug^|Release
    exit /b 1
)
echo -- Path build: '%BUILD_DIR%'
echo.

cmake -S . -B %BUILD_DIR% -DCMAKE_BUILD_TYPE=%TYPE%
if errorlevel 1 exit /b 1

cmake --build %BUILD_DIR% --config=%TYPE%
if errorlevel 1 exit /b 1