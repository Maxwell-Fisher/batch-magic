title Colour fill - @Maxwellcrafter
mode con: cols=99 lines=10
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
echo off
cls
ping 127.1 -n 4 >nul
:a
echo !esc![!random:~1,1!;!random:~1,1!!random:~1,1!H!esc![48;5;!random:~1,2!m !esc![0m
goto a