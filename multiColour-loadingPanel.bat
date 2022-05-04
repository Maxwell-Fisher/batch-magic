title Loading Panel - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
set hold=ping 127.1 -n 1
mode con: cols=37 lines=2
echo off
cls

set /p width=Width: 
cls
set /p height=Height: 
cls
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

for /l %%w in (2, 1, !height!) do (
	for /l %%x in (2, 1, !doubleUp!) do (
		echo !esc![%%w;%%xH!esc![48;5;15m!esc![35;5;15m !esc![0m
	)
)

:a
	for /l %%y in (3, 1, !heightDown!) do (
		for /l %%z in (3, 1, !up!) do (
			echo !esc![%%y;%%zH!esc![48;5;!random:~1,2!m!esc![35;5;!random:~1,2!m !esc![0m
		)
	)

	for /l %%y in (3, 1, !heightDown!) do (
		for /l %%z in (3, 1, !up!) do (
			set /a "value=(!random!%%(255-240+1))+240"
			echo !esc![%%y;%%zH!esc![48;5;!value!m !esc![0m
		)
	)
goto a