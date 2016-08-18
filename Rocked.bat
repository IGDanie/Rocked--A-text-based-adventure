@echo off
title Rocked
color 0f

echo.
echo                   000000 000000 000000 000000 0  000 000000 00000
echo                   0    0 0    0 0    0 0      0 000  0      0    0
echo                   000000 0    0 0    0 0      000    000000 0    0
echo                   0 00   0    0 0    0 0      0 000  0      0    0
echo                   0   00 000000 000000 000000 0  000 000000 00000
echo.
echo                           A TEXT BASED GAME, PLEASE WAIT...
ping localhost -n 3 >nul

:before
cls
echo Before the game begins please enter your desired name then click enter.
echo. 
set /p name=

:startup
cls
echo. 
echo You awake in a small gloomy room. Around you is a door on the left, a door on the right and deep dark hole right in front of you.

echo (type the number of your choice then enter)

echo.
echo 1.)Check the left door.
echo 2.)Check the right door.
echo 3.)Jump down the deep dark hole.
echo.
set /p input0=Set Command:
if %input0%==1 goto leftdoor1
if %input0%==2 goto rightdoor1
if %input0%==3 goto gameover

:gameover
cls
echo        Oh no! Your dead! Dont fall for the same mistake twice! Try again!
echo.
echo.
echo            000000 000000 0       0 000000    00000 0   0 000000 00000
echo            0      0    0 00     00 0         0   0 0   0 0      0   0
echo            0  000 000000 0 0   0 0 00000     0   0 0   0 00000  00000
echo            0    0 0    0 0  0 0  0 0         0   0  0 0  0      0  0
echo            000000 0    0 0   0   0 000000    00000   0   000000 0   0 
echo.
echo.

echo.
echo 1.)Start again!
echo 2.)Close the game!
echo.
set /p input0=Set Command:
if %input0%==1 goto before
if %input0%==2 goto killgame


:killgame
ping localhost -n 1 >nul