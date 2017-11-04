call:trigger %1 %2

:trigger :: Arguments = (eventName, eventInfo)
if %~1 == message call:message "%~1"

GOTO:EOF

:message :: Arguments = (messageContent)
set messageContent=%~1
set messageContent=%messageContent:~1%
call ..\Config\commands.bat
call:%messageContent%
goto:eof