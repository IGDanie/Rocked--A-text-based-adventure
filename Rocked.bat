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

:room1
cls
echo. 
echo You awake in a small gloomy room. Around you is a door on the left, a door on the right and deep dark hole right in front of you.
ping localhost -n 2 >nul 

echo.
echo (type the number of your choice then enter)
echo 1.)Check the left door.
echo 2.)Check the right door.
echo 3.)Jump down the deep dark hole full of rocks.
echo.
set /p input0=Set Command:
if %input0%==1 goto leftdoor1
if %input0%==2 goto rightdoor1
if %input0%==3 goto gameover
if %input0%==4 goto cheat

:leftdoor1
cls
echo.
echo Ah! The door seems to be locked! Try something else!
ping localhost -n 2 >nul 

echo.
echo (type the number of your choice then enter)
echo 1.)Go back and try the right door.
echo 2.)Try jumping down the deep dark hole.
echo 3.)Give up and beat yourself to death with a rock that has presented itself on the floor.
set /p input0=Set Command:
if %input0%==1 goto rightdoor1
if %input0%==2 goto gameover
if %input0%==3 goto gameover

:rightdoor1
cls
echo.
echo The doors unlocked! By chance or on purpose though?
ping localhost -n 2 >nul 

echo.
echo (type the number of your choice then enter)
echo 1.)Dont enter the door and go back.
echo 2.)Continue on through the door.
set /p input0=Set Command:
if %input0%==1 goto room1
if %input0%==2 goto room2

:cheat
cls
echo  You enter through the door...
ping localhost -n 2 >nul 
echo  Its cold... Theres snow beneath your feet...
ping localhost -n 2 >nul 
echo What should you do now?
ping localhost -n 2 >nul 
echo.
pause

:gameover
cls
echo        Oh no! Your dead from rocks! Dont fall for the same mistake twice! Try again!
ping localhost -n 2 >nul 
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
ping localhost -n 2 >nul 
echo 1.)Start again!
echo 2.)Close the game!
echo.
set /p input0=Set Command:
if %input0%==1 goto before
if %input0%==2 goto killgame


:killgame
ping localhost -n 1 >nul