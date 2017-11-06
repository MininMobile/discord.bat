call:%1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO exit

:sendMessage
echo send%~1>update.dat
goto:eof

:dmAuthor
echo dm%~1>update.dat
goto:eof

:exit
exit /b