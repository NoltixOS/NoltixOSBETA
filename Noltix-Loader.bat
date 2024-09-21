@echo off
cd noltixsystem
color 5

:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"


setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto booting
if "%version%" == "6.3" goto booting
if "%version%" == "6.2" goto syserror
if "%version%" == "6.1" goto booting
if "%version%" == "6.0" goto syserror
rem etc etc
endlocal

:booting
cls
echo Preparing...
timeout 1 >nul
echo <OK> bootloader
chcp 65001 >nul
echo <OK> chcp
echo initialising..
timeout 1 >nul
cls
echo.
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo. 														           
echo.
echo.
echo                                                    ██ 
timeout 1 >nul
cls
echo.
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo.
echo.
echo.
echo                                                    ███ 
timeout 1 >nul
cls
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo.
echo.
echo.
echo                                                    ██████ 
timeout 1 >nul
cls
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo.
echo.
echo.
echo                                                    ████████████
timeout 1 >nul
cls
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo.
echo.
echo.
echo                                                    █████████████
timeout 1 >nul
cls
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo.
echo.
echo.
echo                                                    ███████████████
timeout 1 >nul
cls
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.
echo.
echo.
echo                                                    █████████████████
timeout 1 >nul
cls
echo.
echo 									 ███▄    █ 
echo 									 ██ ▀█   █ 
echo 									▓██  ▀█ ██▒
echo 									▓██▒  ▐▌██▒
echo 									▒██░   ▓██░
echo 									░ ▒░   ▒ ▒ 
echo 									░ ░░   ░ ▒░
echo 									   ░   ░ ░ 
echo 									         ░ 
echo.          
echo.
echo.
echo                                                    ████████████████████
timeout 1 >nul
cls
cd noltixsystem
tree
title Noltix OS 6.5
chcp 65001 >nul

color 5
if exist noltixboot.ini goto :start

cls
echo.
echo.
echo                                       ███▄    █  ▒█████   ██▓  ▄▄▄█████▓ ██▓▒██   ██▒     ▒█████    ██████ 
echo                                       ██ ▀█   █ ▒██▒  ██▒▓██▒  ▓  ██▒ ▓▒▓██▒▒▒ █ █ ▒░    ▒██▒  ██▒▒██    ▒ 
echo                                      ▓██  ▀█ ██▒▒██░  ██▒▒██░  ▒ ▓██░ ▒░▒██▒░░  █   ░   ▒██░  ██▒░ ▓██▄   
echo                                      ▓██▒  ▐▌██▒▒██   ██░▒██░  ░ ▓██▓ ░ ░██░ ░ █ █ ▒    ▒██   ██░  ▒   ██▒
echo                                      ▒██░   ▓██░░ ████▓▒░░██████▒▒██▒ ░ ░██░▒██▒ ▒██▒   ░ ████▓▒░▒██████▒▒
echo                                      ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░▓  ░▒ ░░   ░▓  ▒▒ ░ ░▓ ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
echo                                     ░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░ ▒  ░  ░     ▒ ░░░   ░▒ ░  ░ ▒ ▒░ ░ ░▒  ░ ░
echo                                       ░   ░ ░ ░ ░ ░ ▒    ░ ░   ░       ▒ ░ ░    ░  ░ ░ ░ ▒  ░  ░  ░      Setup
echo                                      ░     ░ ░      ░  ░        ░   ░    ░      ░ ░        ░  
echo.
echo  Welcome to NoltixOS ! This does not harm your Windows installation at all. So dont worry about your data being lost ;)
echo If you want to close this, press ALT+F4.
echo  Press any key to continue setup...
pause >nul
goto :nolset2

:nolset2
cd noltixsystem
cls
start byteloader.vbs
echo.
echo.
echo                                       ███▄    █  ▒█████   ██▓  ▄▄▄█████▓ ██▓▒██   ██▒     ▒█████    ██████ 
echo                                       ██ ▀█   █ ▒██▒  ██▒▓██▒  ▓  ██▒ ▓▒▓██▒▒▒ █ █ ▒░    ▒██▒  ██▒▒██    ▒ 
echo                                      ▓██  ▀█ ██▒▒██░  ██▒▒██░  ▒ ▓██░ ▒░▒██▒░░  █   ░   ▒██░  ██▒░ ▓██▄   
echo                                      ▓██▒  ▐▌██▒▒██   ██░▒██░  ░ ▓██▓ ░ ░██░ ░ █ █ ▒    ▒██   ██░  ▒   ██▒
echo                                      ▒██░   ▓██░░ ████▓▒░░██████▒▒██▒ ░ ░██░▒██▒ ▒██▒   ░ ████▓▒░▒██████▒▒
echo                                      ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░▓  ░▒ ░░   ░▓  ▒▒ ░ ░▓ ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
echo                                     ░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░ ▒  ░  ░     ▒ ░░░   ░▒ ░  ░ ▒ ▒░ ░ ░▒  ░ ░
echo                                       ░   ░ ░ ░ ░ ░ ▒    ░ ░   ░       ▒ ░ ░    ░  ░ ░ ░ ▒  ░  ░  ░      Setup
echo                                      ░     ░ ░      ░  ░        ░   ░    ░      ░ ░        ░  
echo.
echo NoltixOS is verifying if any files are corrupt. This may take a few seconds. Meanwhile, Enjoy some bytebeat music!
timeout 11 >nul
goto :nolset3

:nolset3
echo NoltixOS was succesfully installed in %time%. > noltixboot.ini
cls
echo.
echo.
echo                                       ███▄    █  ▒█████   ██▓  ▄▄▄█████▓ ██▓▒██   ██▒     ▒█████    ██████ 
echo                                       ██ ▀█   █ ▒██▒  ██▒▓██▒  ▓  ██▒ ▓▒▓██▒▒▒ █ █ ▒░    ▒██▒  ██▒▒██    ▒ 
echo                                      ▓██  ▀█ ██▒▒██░  ██▒▒██░  ▒ ▓██░ ▒░▒██▒░░  █   ░   ▒██░  ██▒░ ▓██▄   
echo                                      ▓██▒  ▐▌██▒▒██   ██░▒██░  ░ ▓██▓ ░ ░██░ ░ █ █ ▒    ▒██   ██░  ▒   ██▒
echo                                      ▒██░   ▓██░░ ████▓▒░░██████▒▒██▒ ░ ░██░▒██▒ ▒██▒   ░ ████▓▒░▒██████▒▒
echo                                      ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░▓  ░▒ ░░   ░▓  ▒▒ ░ ░▓ ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
echo                                     ░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░ ▒  ░  ░     ▒ ░░░   ░▒ ░  ░ ▒ ▒░ ░ ░▒  ░ ░
echo                                       ░   ░ ░ ░ ░ ░ ▒    ░ ░   ░       ▒ ░ ░    ░  ░ ░ ░ ▒  ░  ░  ░      Setup
echo                                      ░     ░ ░      ░  ░        ░   ░    ░      ░ ░        ░  
echo.
echo Thanks for downloading NoltixOS. After pressing any key, you will be greeted with the desktop.
pause >nul


:start
cls
color 5
goto :menu

:menu
color 5
cd noltixsystem
cls
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo.
echo.
echo                                       ███▄    █  ▒█████   ██▓  ▄▄▄█████▓ ██▓▒██   ██▒     ▒█████    ██████ 
echo                                       ██ ▀█   █ ▒██▒  ██▒▓██▒  ▓  ██▒ ▓▒▓██▒▒▒ █ █ ▒░    ▒██▒  ██▒▒██    ▒ 
echo                                      ▓██  ▀█ ██▒▒██░  ██▒▒██░  ▒ ▓██░ ▒░▒██▒░░  █   ░   ▒██░  ██▒░ ▓██▄   
echo                                      ▓██▒  ▐▌██▒▒██   ██░▒██░  ░ ▓██▓ ░ ░██░ ░ █ █ ▒    ▒██   ██░  ▒   ██▒
echo                                      ▒██░   ▓██░░ ████▓▒░░██████▒▒██▒ ░ ░██░▒██▒ ▒██▒   ░ ████▓▒░▒██████▒▒
echo                                      ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░▓  ░▒ ░░   ░▓  ▒▒ ░ ░▓ ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
echo                                     ░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░ ▒  ░  ░     ▒ ░░░   ░▒ ░  ░ ▒ ▒░ ░ ░▒  ░ ░
echo                                       ░   ░ ░ ░ ░ ░ ▒    ░ ░   ░       ▒ ░ ░    ░  ░ ░ ░ ▒  ░  ░  ░    Version 6.5
echo                                      ░     ░ ░      ░  ░        ░   ░    ░      ░ ░        ░  
echo.
echo [38;2;255;255;0m╔═(A) Help and tips[0m  
echo [38;2;255;255;0m║[0m  
echo [38;2;255;255;0m╠══(B) Noltix Terminal[0m  
echo [38;2;255;255;0m║[0m  
echo [38;2;255;255;0m╠═══(C) Control Panel[0m  
echo [38;2;255;255;0m║[0m  
echo [38;2;255;255;0m╚╦═══(D) Shutdown Session[0m  
echo [38;2;255;255;0m ║[0m  
set /p input=.%BS% [38;2;255;255;0m╚══════^>[0m  
if /I %input% EQU A start helping.bat
if /I %input% EQU B goto Termina
if /I %input% EQU C start ctrlpnl.bat
if /I %input% EQU D exit
cls
goto start

:Termina
color 5
cls
echo NoltixOS Terminal - Version 6.5
echo Type help or ? for list of commands, exit to go back to NoltixOS desktop.
set /p answer= $ 
if %answer% == help goto termh
if %answer% == ? goto termh
if %answer% == exit goto start
if %answer% == ipping goto ddoser
if %answer% == ddos goto ddoser

:termh
echo ?/help = this menu, exit = return to noltix desktop, ipping = ip pinger
set /p answer= $ 
if %answer% == help goto termh
if %answer% == ? goto termh
if %answer% == exit goto start
if %answer% == ipping goto ddoser
if %answer% == ddos goto ddoser

:ddoser
cls
color b
echo NoltixOS Ip Pinger.
echo.
echo.
echo Warning: Never ping your own ip! This may make networks and all this stuff on that ip unusable!
echo A = continue
echo B = return to Terminal
set /p answerip= Answer: 
if %answerip% == a goto ddosatak
if %answerip% == b goto Termina

:ddosatak
cls
echo NoltixOS Ip Pinger.
echo When you're pinging the ip, if you want to exit, press ALT+F4.
echo.
echo.
set /p ipax= IP Address: 
set /p ping= Pings: 
:iping
echo Pinging %ipax% at %time%
goto iping





:syserror
cls
color 4
echo  NoltixOS could not boot up correctly.
echo.
echo Stop code: WINDOWS_NOT_SUPPORTED 0001X182
pause >nul
goto syserror
