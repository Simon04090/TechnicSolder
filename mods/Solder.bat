Setlocal EnableDelayedExpansion
@echo off
for /D %%i in (*) do (
	cd %%i
	set /p v="Version für %%i:"
	echo !v!
	set dir=%%i-!v!
	echo !dir!
	mkdir !dir!
	cd !dir!
	mkdir mods
	cd ..
	cd ..
	echo !dir! >> Versions.txt
	pause
)

REM		set asw=0
REM		set /p asw=Version für %%i:%=%
REM		echo %asw%