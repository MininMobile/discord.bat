call Config\config.bat

mkdir TEMP
echo %bot.token%>TEMP\bot.token.dat

cd Runtime
start discord.bat.exe.exe
