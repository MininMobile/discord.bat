call Config\config.bat

echo %bot.token%>TEMP\bot.token.dat

start Runtime\discord.bat.exe.exe
