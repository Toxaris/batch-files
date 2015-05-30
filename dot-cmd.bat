@echo off

rem consider to register the full path to this file
rem
rem HKEY_CURRENT_USER\Software\Microsoft\Command Processor
rem autorun : REG_SZ = "...\dot-cmd.bat"

doskey ls=ls --color=auto $*
doskey ll=ls -l --color=auto $*
