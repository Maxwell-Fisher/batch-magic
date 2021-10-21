title Loading Panel - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
set hold=ping 127.1 -n 1
mode con: cols=32 lines=2
echo off
cls

set /p width=Width: 
cls
set /p height=Height: 
cls
choice /m "Slow the script down?"
if "!errorlevel!"=="1" set slowdown=1
set /a height=!height!+4
set /a width=!width!+2
set /a up=!width!+1
set /a doubleUp=!width!+2
set /a tripleUp=!width!+3
mode con: cols=!tripleUp! lines=!height!
set /a height=!height!-1
set /a heightDown=!height!-1
set "tripleUp="
cls

for /l %%y in (2, 1, !height!) do (
	for /l %%z in (2, 1, !doubleUp!) do (
		echo !esc![%%y;%%zH!esc![48;5;15m!esc![35;5;15m !esc![0m
	)
)

set "doubleUp="

:a
	for /l %%w in (3, 1, !heightDown!) do (
		for /l %%x in (3, 1, !up!) do (
			echo !esc![%%w;%%xH!esc![48;5;!random:~1,2!m!esc![35;5;!random:~1,2!m !esc![0m
			if "!slowdown!"=="1" ping 127.1 -n 1 >nul
		)
	)
goto a