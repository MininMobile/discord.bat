set commands=help ping credits

type NUL>commandList.bat
(for %%i in (%commands%) do ( 
	echo echo:%%i>>commandList.bat
	echo echo %%i>>commandList.bat
	echo GOTO:EOF>>commandList.bat
	type NUL>>commandList.bat
))