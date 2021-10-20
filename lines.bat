title Colour lines - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
echo off
cls
ping 127.1 -n 4 >nul
cls

:a
echo !esc![!random:~0,2!;!random:~0,2!H!esc![48;5;!random:~0,2!m
goto a