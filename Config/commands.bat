if "%~1" neq "" call:%~1

:help
call s.bat sendMessage "Commands: $help, $ping, $info"
goto:eof

:ping
call s.bat sendMessage "Pong"
goto:eof

:info
call s.bat sendMessage "Made using `discord.bat` (Yes, it's real)"
goto:eof