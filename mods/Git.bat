@echo off
Setlocal EnableDelayedExpansion
for /D %%i in (*) do (
	set i=%%~fi
	cd !i!
	echo %%~fi
	echo !i!
	git add *
	git commit -m "Auto generated commit"
	git push
	cd ..
	pause
)

	