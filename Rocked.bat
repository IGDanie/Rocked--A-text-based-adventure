@echo off
title Rocked - A Text Based Adventure By Daniel Parr
color 0f

echo.
echo                       000000 000000 000000 0  000 000000 00000
echo                       0    0 0    0 0      0 000  0      0    0
echo                       000000 0    0 0      000    000000 0    0
echo                       0 00   0    0 0      0 000  0      0    0
echo                       0   00 000000 000000 0  000 000000 00000
echo.    
ping localhost -n 2 >nul
echo                          LIVE BY THE ROCK, DIE BY THE ROCK
ping localhost -n 2 >nul
echo                           A TEXT BASED GAME, PLEASE WAIT...
ping localhost -n 2 >nul
echo                               Created by Daniel Parr
ping localhost -n 2 >nul
echo                                       Enjoy!
ping localhost -n 3 >nul
echo.                                                         
echo                                    ----Tips----
echo              Do not use the mouse to click as will cause game to bug out.
echo                               Only use the keyboard.
ping localhost -n 3 >nul
echo                        Everything is not as fun as it seems
ping localhost -n 4 >nul
echo.
echo                   Enter the number "1" and click enter to start!
echo.
set /p input0=Time to Start the adventure!:
if %input0%==1 goto before

:before
cls
echo Before the game begins please enter your desired name then click enter.
echo. 
set /p Enter your name adventurer!=

:room1
cls
echo. 
echo Greetings %Enter your name adventurer!%. You awake in a small gloomy room. 
ping localhost -n 2 >nul
echo Around you is a door on the left, a door on the right and deep dark hole right in front of you.
ping localhost -n 2 >nul 

echo.
echo (type the number of your choice then enter)
echo 1.)Check the left door.
echo 2.)Check the right door.
echo 3.)Jump down the deep dark hole full of rocks.
echo.
set /p input0=What should we do?:
if %input0%==1 goto leftdoor1
if %input0%==2 goto rightdoor1
if %input0%==3 goto gameover
if %input0%==4 goto room2

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
set /p input0=What should we do?:
if %input0%==1 goto rightdoor1
if %input0%==2 goto gameover
if %input0%==3 goto gameoverbeatself

:rightdoor1
cls
echo.
echo The doors unlocked! 
ping localhost -n 2 >nul
echo By chance or on purpose though?
ping localhost -n 2 >nul 

echo.
echo (type the number of your choice then enter)
echo 1.)Dont enter the door and go back.
echo 2.)Continue on through the door.
set /p input0=What should we do?:
if %input0%==1 goto room1
if %input0%==2 goto room2

:room2
cls
echo You enter through the door...
ping localhost -n 2 >nul 
echo Its cold... Theres snow beneath your feet...
ping localhost -n 2 >nul 
echo What should you do now?
ping localhost -n 2 >nul 
echo.

echo 1.)Make a snow angel... because why not...
echo 2.)Figure out where you are.
echo 3.)Explore.
echo 4.)Go back through the door.
set /p input0=What should we do?:
if %input0%==1 goto gameoversnowangel
if %input0%==2 goto figureout
if %input0%==3 goto explore
if %input0%==4 goto locked

:explore
cls
echo You start to look around to see what you can find...
ping localhost -n 2 >nul 
echo In the distance you see some mountains you orgionally couldnt see.
ping localhost -n 2 >nul 
echo Apart from that nothing new. What now? 
ping localhost -n 2 >nul 
echo.

echo 1.) Try and figure out where you are.
echo 2.) Head towards the mountains
echo 3.) Go back through the door.
set /p input0=What should we do?:
if %input0%==1 goto figureout2
if %input0%==2 goto headmountaines
if %input0%==3 goto locked2

:locked2
cls
echo You turn round and head towards the door...
ping localhost -n 2 >nul 
echo Before you reach the door it slams shut. Guess theres no turning back now.
ping localhost -n 2 >nul 
echo.

echo 1.) Try and figure out where you are.
echo 2.) Head towards the mountains
set /p input0=What should we do?:
if %input0%==1 goto figureout2
if %input0%==2 goto headmountaines

:locked
cls 
echo You turn round and head towards the door...
ping localhost -n 2 >nul 
echo Before you reach the door it slams shut. Guess theres no turning back now.
ping localhost -n 2 >nul 
echo.

echo 1.) Try and Figure out where you are.
echo 2.) Explore.
set /p input0=What should we do?:
if %input0%==1 goto figureout
if %input0%==2 goto explore

:figureout
cls
echo You look around wondering how you got here and where you are...
ping localhost -n 2 >nul
echo You still have no idea where you are maybe soon you will.
ping localhost -n 2 >nul
echo.

echo 1.) Explore.
echo 2.) Go back through the door.
set /p input0=What should we do?:
if %input0%==1 goto explore
if %input0%==2 goto locked

:figureout2
cls
echo You look around wondering how you got here and where you are...
ping localhost -n 2 >nul
echo You still have no idea where you are maybe soon you will.
ping localhost -n 2 >nul
echo.

echo 1.)Head towards the mountains.
set /p input0=What should we do?:
if %input0%==1 goto headmountaines

//new area no need to go back before here
:headmountaines
cls
echo You start to head towards the mountains and you come accross a camp...
ping localhost -n 2 >nul
echo What should we do?
ping localhost -n 2 >nul
echo.

echo 1.) Have a look around the camp.
echo 2.) Ignore the camp and continue on towards the mountain.
set /p input0=What should we do?:
if %input0%==1 goto explorecamp
if %input0%==2 goto continuemount

:explorecamp
cls
echo You start to look around the camp...
ping localhost -n 2 >nul
echo Its all messy and covered in rotten flesh...
ping localhost -n 2 >nul
echo You notice a bed.
ping localhost -n 2 >nul
echo.

echo 1.) Have a look at the bed.
echo 2.) Ignore the bed and continue on towards the mountain.
set /p input0=What should we do?:
if %input0%==1 goto lookbed
if %input0%==2 goto continuemount

:lookbed
cls
echo You walk slowly towards the bed...
ping localhost -n 2 >nul
echo and notice something is under the covers...
ping localhost -n 2 >nul
echo luckily whatever it is seems to be asleep!
ping localhost -n 2 >nul
echo.

echo 1.) Fuck this shit. Wake what ever it is the fuck up.
echo 2.) Dont wake what ever it is up and walk away back towards the mountain.
set /p input0=What should we do?:
if %input0%==1 goto wakeup
if %input0%==2 goto continuemount

:wakeup
cls
echo You grab the cover and pull it back to reveal a...
ping localhost -n 2 >nul
echo ROCK! But this isnt any rock its a real living rock!
ping localhost -n 2 >nul
echo Looks like its angry and now looking for a fight!
ping localhost -n 2 >nul
echo You have a 80% chance to win this fight!
ping localhost -n 2 >nul
echo.

echo Pick a number between 1-10 quick! Two of the numbers wil kill you!
set /p input0=What number will you pick!?!?:
if %input0%==1 goto winfight1
if %input0%==2 goto winfight1
if %input0%==3 goto winfight1
if %input0%==4 goto beddeathrock
if %input0%==5 goto winfight1
if %input0%==6 goto winfight1
if %input0%==7 goto winfight1
if %input0%==8 goto beddeathrock
if %input0%==9 goto winfight1
if %input0%==10 goto winfight1

:winfight1
cls
echo You attempt to slash the rock with your hand...
ping localhost -n 2 >nul 
echo By some miracle you manage to break the rock in half.
ping localhost -n 2 >nul 
echo How could you... You cruel bastard... Lets just go.
ping localhost -n 2 >nul 
echo.

echo 1.) Contine towards the mountain now the rock is gone.
set /p input0=What should we do?:
if %input0%==2 goto continuemount

:continuemount

//gameover areas
:gameoverbeatself
cls
echo Ah its as if by some miricale that a rock has appeared...
ping localhost -n 2 >nul 
echo You pick up the rock and start smashing it against your head non stop...
ping localhost -n 2 >nul 
echo Your dead... That was fun wasnt it...
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
set /p input0=What should we do?:
if %input0%==1 goto before
if %input0%==2 goto killgame

:gameoversnowangel
cls
echo You lay down on the floor and spread your arms and legs ready to make the perfect snow angel...
ping localhost -n 2 >nul 
echo but before you know it out of no where comes a rock and splatters your brains...
ping localhost -n 2 >nul 
echo now that snow angel didnt sound like a good idea did it.
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
set /p input0=What should we do?:
if %input0%==1 goto before
if %input0%==2 goto killgame

:gameover
cls
echo You jump down the hole...
ping localhost -n 2 >nul 
echo Oh no! Your dead from falling down the deep hole full of rocks! 
ping localhost -n 2 >nul 
echo Dont fall for the same mistake twice! Try again!
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
set /p input0=What should we do?:
if %input0%==1 goto before
if %input0%==2 goto killgame

:beddeathrock
cls
echo You attempt to slash the rock with your hand...
ping localhost -n 2 >nul 
echo As expected, that didnt go well at all.
ping localhost -n 2 >nul 
echo You get crushed to death by the rock.
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
set /p input0=What should we do?:
if %input0%==1 goto before
if %input0%==2 goto killgame

:killgame
ping localhost -n 1 >nul