@echo off
title Rocked
color 0c

echo.
echo                   000000 000000 000000 000000 0  000 000000 00000
echo                   0    0 0    0 0    0 0      0 000  0      0    0
echo                   000000 0    0 0    0 0      000    000000 0    0
echo                   0 00   0    0 0    0 0      0 000  0      0    0
echo                   0   00 000000 000000 000000 0  000 000000 00000
echo.
echo                           A TEXT BASED GAME, PLEASE WAIT...
ping localhost -n 5 >nul
:Before
cls
echo Before the game begins please enter your desired name.
echo. 
set /p name=
:startup