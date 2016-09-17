@echo off
title Rocked - A Text Based Adventure By Daniel Parr
color 0a

echo.
echo                       000000 000000 000000 0   00 000000 00000
echo                       0    0 0    0 0      0 000  0      0    0
echo                       000000 0    0 0      000    000000 0    0
echo                       0 00   0    0 0      0 000  0      0    0
echo                       0   00 000000 000000 0   00 000000 00000
echo.    
ping localhost -n 2 >nul
echo                          LIVE BY THE ROCK, DIE BY THE ROCK
ping localhost -n 2 >nul
echo                           A TEXT BASED GAME, PLEASE WAIT...
ping localhost -n 2 >nul
echo                               Created by Daniel Parr
ping localhost -n 2 >nul
echo                                       Enjoy!
ping localhost -n 2 >nul
echo.                                                         
echo                                     ----Tip----
echo        Do not use the mouse to click as will cause game to bug out and loose progress.
echo                                Only use the keyboard.
ping localhost -n 4 >nul
echo.

:before
cls
echo Before the game begins please enter your desired name then click enter.
echo. 
ping localhost -n 2 >nul
type image2.txt
ping localhost -n 2 >nul
set /p Enter your name adventurer!=

:room1
cls
echo. 
echo Greetings %Enter your name adventurer!%. You awake in a small gloomy room. 
ping localhost -n 2 >nul
echo Around you is a door on the left, a door on the right and deep dark hole right in front of you.
ping localhost -n 2 >nul 
type image1.txt
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
if %input0%==4 goto explore

:leftdoor1
cls
echo.
echo Ah! The door seems to be locked! Try something else!
ping localhost -n 2 >nul 
type image4.txt
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
type image5.txt
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
type image6.txt
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
type image3.txt
echo.
ping localhost -n 2 >nul 

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
type image4.txt
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
type image4.txt
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
cls
echo You continue on your route towards the mountain...
ping localhost -n 2 >nul 
echo everything is still covered in rocks and snow.
ping localhost -n 2 >nul 
echo Eventually you arrive at the bottom of the mountain.
ping localhost -n 2 >nul 
echo.

echo 1.) Look for safe passage through the mountain.
echo 2.) Look for a way around the mountain.
echo 3.) Look for a way over the mountain.
set /p input0=What should we do?:
if %input0%==1 goto mountainthrough
if %input0%==2 goto mountainaround
if %input0%==3 goto mountainover

:continuemountrechoose
cls
echo Rethinking your strategy? 
ping localhost -n 2 >nul 
echo What shoud we do instead?
ping localhost -n 2 >nul 
echo.

echo 1.) Look for safe passage through the mountain.
echo 2.) Look for a way around the mountain.
echo 3.) Look for a way over the mountain.
set /p input0=What should we do?:
if %input0%==1 goto mountainthrough
if %input0%==2 goto mountainaround
if %input0%==3 goto mountainover

:mountainaround
cls
echo You decide to look for a way around the montain rather then over or through it.
ping localhost -n 2 >nul 
echo Looks like you can go around but it will take days!
ping localhost -n 2 >nul 
echo Is it really worth it? You dont have much food or water.
ping localhost -n 2 >nul 
echo.

echo 1.) Continue to go around the mountain even though you have near no food or water.
echo 2.) Go back and rethink your options.
set /p input0=What should we do?:
if %input0%==2 goto continuemountrechoose
if %input0%==1 goto Continuearoundmountain

:mountainover
cls
echo You can see a way straight over the mountain! 
ping localhost -n 2 >nul
echo It looks reasonably safe, but we wont know how safe till we are up there.
ping localhost -n 2 >nul
echo.

echo 1.) Continue up the mountain not knowing how safe it is.
echo 2.) Go back and rethink your options.
set /p input0=What should we do?:
if %input0%==2 goto continuemountrechoose
if %input0%==1 goto overthemountain

:mountainthrough
cls
echo You decide to look for a way through the mountain rather then around or over it.
ping localhost -n 2 >nul 
echo Now presented in front of you is two caves...
ping localhost -n 2 >nul 
echo They both have signs. One says "dangerous! beware!" and the other says scenic
ping localhost -n 2 >nul 
echo Scenic route. What one will you take?
ping localhost -n 2 >nul 
echo.

echo 1.) Take the dangerous route. #thuglife
echo 2.) Take the scenic route.
echo 3.) Change your mind and have a look at the other options to get by this mountain.
set /p input0=What should we do?:
if %input0%==1 goto dangerousroutethrough
if %input0%==2 goto scenicroutethrough
if %input0%==3 goto continuemountrechoose

:dangerousroutethrough
cls
echo You head slowly into the cave marked dangerous...
ping localhost -n 2 >nul 
echo Everything it falling apart around you. Do you continue?
ping localhost -n 2 >nul 
echo.

echo 1.) Yes, continue thorugh the cave.
echo 2.) Dont continue and turn around.
set /p input0=What should we do?:
if %input0%==1 goto dangercontinue
if %input0%==2 goto mountainthrough

:scenicroutethrough
cls
echo You decide to take the scenic route through the mountain, 
ping localhost -n 2 >nul
echo everything just looks amazing! birds, cave paintings and a inside waterfall! 
ping localhost -n 2 >nul
echo.

echo 1.) Investigate the waterfall.
echo 2.) Investigste the cave paintings.
echo 3.) Try and catch a bird.
set /p input=0What should we do?:
if %input0%==1 goto investwaterfall
if %input0%==2 goto investpaintings
if %input0%==3 goto catchbird


:Continuearoundmountain
cls
echo You decide to continue around the mountain...
ping localhost -n 2 >nul
echo after a long time walking you arrive at a village.
ping localhost -n 2 >nul
echo.

echo 1.) Visit the village.
echo 2.) Ignore the village and continue on the path.
set /p input=0What should we do?:
if %input0%==1 goto villagevisit
if %input0%==2 goto continuepathbyvillage

:overthemountain
cls
echo You decide to continue by attempting to scale the mountain...
ping localhost -n 2 >nul
echo now presented in front of you is two possible ways...
ping localhost -n 2 >nul
echo One way seems like someone has been there recently and the other...
ping localhost -n 2 >nul
echo looks dangerous but seems no one has ever been this way.
ping localhost -n 2 >nul
echo.

echo 1.) Route where someone has been previously.
echo 2.) Route where no one has been before but dangerous.
set /p input=0What should we do?:
if %input0%==1 goto knownclimb
if %input0%==2 goto unknownclimb

:villagevisit
cls
echo You decide to continue around the mountain and arrive at a village...
ping localhost -n 2 >nul
echo It seems deserted... Maybe your the first person here in 100's of years...
ping localhost -n 2 >nul
echo This could be a scientific breakthrough of our past.
ping localhost -n 2 >nul
echo.

echo 1.) Investigate village further.
echo 2.) Leave village and continue back on path.
set /p input=0What should we do?:
if %input0%==1 goto invesvillage
if %input0%==2 goto continuepathbyvillage

:invesvillage
cls
echo Looking around the village you see all sort of wonders...
ping localhost -n 2 >nul
echo You see something sparkling in a close by building...
ping localhost -n 2 >nul
echo.

echo 1.) Go see what the sparkle is.
echo 2.) Exit the village and continue.
set /p input=0What should we do?:
if %input0%==1 goto sparklevillage
if %input0%==2 goto continuepathbyvillage

:sparklevillage
cls
echo You head forwards towards the sparkles to see what it is...
ping localhost -n 2 >nul 2
echo When you get there you notice the sparkle is coming from a chest...
ping localhost -n 2 >nul 2 
echo Unfortunately the chest has a coded padlock on it.
ping localhost -n 2 >nul 2
echo.

echo 1.) Attempt to guess and unlock the chest.
echo 2.) Exit the village and continue on the path.
set /p input=0What should we do?:
if %input0%==1 goto unlockchest
if %input0%==2 goto continuepathbyvillage

:unlockchest
cls
echo The chest has a two digit lock on it, that means from 00 to 99...
ping localhost -n 2 >nul 2
echo The chest also has some forgeign writing on it...
ping localhost -n 2 >nul 2
echo.

echo 1.) Go and attempt to guess the code.
echo 2.) Investigate the writing.
echo 3.) Leave the chest and continue on path.
set /p input=What should we do?:
if %input0%==1 goto entercodechest
if %input0%==2 goto writingchest
if %input0%==3 goto continuepathbyvillage

:entercodechest

:chestwriting

:continuepathbyvillage

:knownclimb

:unknownclimb

:investwaterfall

:investpaintings 

:catchbird

//gameover areas -----------------------------------------------------------------------
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

:dangercontinue
cls
echo You decide to continue along the dangerous route...
ping localhost -n 2 >nul 
echo slowly the cave is getting more and more dangerous with bit falling all around you...
ping localhost -n 2 >nul
echo all of a sudden the cave claspes in on top of you!
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
//gameover areas -----------------------------------------------------------------------

:killgame
ping localhost -n 1 >nul

//win areas ----------------------------------------------------------------------------
:win
cls
color 0a
echo.
echo.
echo               0   0  00000  0   0    0   0   0  00000  0   0
echo                0 0   0   0  0   0    0   0   0    0    00  0
echo                 0    0   0  0   0    0   0   0    0    0 0 0
echo                 0    0   0  0   0     0 0 0 0     0    0  00
echo                 0    00000  00000      0   0    00000  0   0
echo.
//win areas ----------------------------------------------------------------------------