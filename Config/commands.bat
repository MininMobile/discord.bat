if %1 neq "" call:%~1
goto exit

:help
call s.bat dmAuthor "Commands: $help, $ping, $info"
goto:eof

:ping
call s.bat sendMessage "Pong"
goto:eof

:info
call s.bat sendMessage "Made using `discord.bat` (Yes, it's real)"
goto:eof

:exit