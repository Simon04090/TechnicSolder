Setlocal EnableDelayedExpansion
@echo off
for /D %%i in (*) do (
	cd %%i
	set /p v="Version f�r %%i:"
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
REM		set /p asw=Version f�r %%i:%=%
REM		echo %asw%