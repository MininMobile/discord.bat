@echo off
SETLOCAL EnableDelayedExpansion
call ..\Config\config.bat
call ..\Config\global.bat
call:trigger %1 %2
goto exit

:trigger :: Arguments = (eventName, eventInfo)
if %~1 == message call:message "%~2"
goto:eof

:message :: Arguments = (messageContent)
if %events.message.notification% == 1 (
    echo Recieved Message: %~1
)

set firstChar=%~1
set firstChar=!firstChar:~0,1!
if !firstChar! neq %bot.prefix% goto:eof

set messageContent=%~1
set messageContent=%messageContent:~1%

call ..\Config\commands.bat "%messageContent%"
goto:eof

:exit