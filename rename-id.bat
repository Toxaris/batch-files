@echo off

setlocal

if "%1"=="" goto USAGE
set FILE=%1
shift

if "%1"=="" goto USAGE
set PATTERN=%1
shift

if "%1"=="" goto USAGE
set TEMPLATE=%1
shift

gfind -iname "%FILE%" | xargs sed -i "s/%PATTERN%$/%TEMPLATE%/g"
gfind -iname "%FILE%" | xargs sed -i "s/%PATTERN% /%TEMPLATE% /g"
gfind -iname "%FILE%" | xargs sed -i "s/%PATTERN%)/%TEMPLATE%)/g"
gfind -iname "%FILE%" | xargs sed -i "s/%PATTERN%}/%TEMPLATE%}/g"

goto END

:USAGE
echo rename-id FILE PATTERN TEMPLATE
echo.
echo DON'T USE QUOTES!
goto END

:END