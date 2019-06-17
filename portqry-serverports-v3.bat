@echo off
ECHO ===============================================

ECHO  Hydra Connectivity Port Tests

ECHO ===============================================

setlocal enabledelayedexpansion

FOR /F "eol=; tokens=1,2 delims=:" %%I IN (serverports.txt) DO (PortQry -n %%I -p TCP -o %%J) | .\gnuwin\grep.exe -e "called" -A 2 -e "TCP" 

pause