:help
call:sendMessage "Commands: $help, $ping, $info"
goto:eof

:ping
call:sendMessage "Pong"
goto:eof

:info
call:sendMessage "Made using `discord.bat` (Yes, it's real)"
goto:eof