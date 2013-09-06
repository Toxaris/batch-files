@echo off

setlocal

if "%1"=="" goto USAGE
set FILE=%1
shift

if "%1"=="" goto USAGE
set PATTERN=%1
shift

gfind -iname "%FILE%" | xargs grep -nH "%PATTERN%"

goto END

:USAGE
echo find-grep FILE PATTERN
echo.
echo DON'T USE QUOTES!
goto END

:END