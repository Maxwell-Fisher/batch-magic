title Colour lines - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
echo off
cls
ping 127.1 -n 4 >nul
set red=!esc![31m!esc![41m !esc![0m
set green=!esc![32m!esc![42m !esc![0m
set blue=!esc![34m!esc![44m !esc![0m
set cyan=!esc![36m!esc![46m !esc![0m
set magenta=!esc![35m!esc![45m !esc![0m
set yellow=!esc![33m!esc![43m !esc![0m
cls

:a
echo !esc![!random:~0,2!;!random:~0,2!H!esc![35;5;!random:~0,2!m
goto a