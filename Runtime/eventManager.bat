@echo off
SETLOCAL EnableDelayedExpansion
call ..\Config\config.bat
call:trigger %1 %2
goto exit

:trigger :: Arguments = (eventName, eventInfo)
if %~1 == message call:message "%~2"
GOTO:EOF

:message :: Arguments = (messageContent)
if %events.message.notification% == 1 (
    echo Recieved Message: %~1
)

SET firstChar=%~1
SET firstChar=!firstChar:~0,1!
if !firstChar! neq %bot.prefix% goto:eof

set messageContent=%~1
set messageContent=%messageContent:~1%

call ..\Config\commands.bat "%messageContent%"
goto:eof

:exit