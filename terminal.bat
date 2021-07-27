:load
@echo off
cls
cd C:\Windows\System32
title PowerTerminal
echo Microsoft Windows [version 10.0.19042.1110]
echo (c) Microsoft Corporation. Tous droits reserves.
echo Terminal By SpinCraft95
:run
set "command="
echo.
echo __
cd
echo "%computername%|%username%|%date%|%time%"
set /p "command=>>>"
echo.
if "%command%"=="reload" goto reload
if "%command%"=="" goto run
if "%command%"=="exit" exit
if not "%command%"=="" cmd /c %command%
goto run

:reload
cls
goto load
