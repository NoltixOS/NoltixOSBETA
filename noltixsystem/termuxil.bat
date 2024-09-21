@echo off

:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"

:termina
cls
color b
echo NoltixOS Terminal - Version 6.5
echo Type help or ? for list of commands, exit to go back to NoltixOS desktop.

set/p answer=>
if %answer% == 1 goto Movie!
if %answer% == 2 goto Shutdown
if %answer% == 3 goto Credits 
if %answer% == 4 goto terminal

cls
goto termina