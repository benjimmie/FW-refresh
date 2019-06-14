@echo off
ECHO ===============================================

ECHO  Hydra Connectivity Port Tests

ECHO ===============================================


setlocal
    for /f "tokens=1,2 delims=:" %%a in (serverports.txt) do (
        set "port=%%~b"
        if not defined port set "port=80"
        setlocal enabledelayedexpansion
        portqry -n "%%~a" -e "!port!" >NUL 2>NUL && (
            echo %%a port !port!: OK
        ) || (
            echo %%a port !port!: NOK
        )
        endlocal
    )


pause