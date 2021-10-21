title Loading bar - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
set hold=ping 127.1 -n 1
mode con: cols=24 lines=5
echo off
cls

set /p width=Number of spaces: 
set /a width=!width!+2
set /a up=!width!+1
set /a doubleUp=!width!+2
set /a tripleUp=!width!+3
mode con: cols=!tripleUp! lines=5
set "tripleUp="
cls

echo !esc![3;2H!esc![48;5;15m!esc![35;5;15m !esc![0m
echo !esc![3;!doubleUp!H!esc![48;5;15m!esc![35;5;15m !esc![0m

for /l %%y in (2, 2, 4) do (
	for /l %%z in (2, 1, !doubleUp!) do (
		echo !esc![%%y;%%zH!esc![48;5;15m!esc![35;5;15m !esc![0m
	)
)

set "doubleUp="

:a
	for /l %%x in (3, 1, !up!) do (
		echo !esc![3;%%xH!esc![48;5;!random:~1,2!m!esc![35;5;!random:~1,2!m !esc![0m
		ping 127.1 -n 1 >nul
	)
goto a