Setlocal EnableDelayedExpansion
@echo off
for /D %%i in (*) do (
	set i=%%~fi
	cd !i!
	echo %%~fi
	echo !i!
	pause
	for /D %%x in (*) do (
		set x=%%~fx
		move *.jar !x!
		echo %%~fx
		echo !x!
		pause
		cd !x!
		move *.jar mods
		C:\Users\Simon\7za.exe a -tzip !x!.whatever *
		move !x!.whatever ..
		cd ..
		pause
	)
	cd ..
)
pause