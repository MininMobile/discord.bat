call Config\config.bat

mkdir TEMP
echo %bot.token%>TEMP\bot.token.dat

start Runtime\discord.bat.exe.exe
