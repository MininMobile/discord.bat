call ..\Config\commands.bat

type NUL>commandList.bat
(for %%i in (%commands%) do ( 
	echo echo:%%i>>commandList.bat
	echo echo %%i>>commandList.bat
	echo GOTO:EOF>>commandList.bat
	echo. 2>>commandList.bat
))