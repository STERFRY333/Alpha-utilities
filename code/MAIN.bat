@echo off
color 0e
title Alpha Utilities Rev.0.1

:login_user
cls
echo.
echo.
echo     Login
echo.
echo     USERNAME:____________
echo     PASSWORD:____________
echo.
echo.
echo.

set /p USERNAME=ENTER USERNAME: 

:login_pass
cls
echo.
echo.
echo     Login
echo.
echo     USERNAME:%USERNAME%
echo     PASSWORD:____________
echo.
echo.
echo.

set /p PASSWORD=ENTER PASSWORD: 

:login_check
cls
echo.
echo.
echo     Login
echo.
echo     USERNAME:%USERNAME%
echo     PASSWORD:%PASSWORD%
echo.
echo.
echo.

set /p PRESS_ENTER=[PRESS_ENTER]
goto login_usercheck

:login_usercheck
cls
if %USERNAME%==guest goto user_good
goto user_bad
:user_bad
cls
echo.
echo.
echo     Login
echo.
echo     USERNAME:%USERNAME% [ERROR]
echo     PASSWORD:%PASSWORD%
echo.
echo.
echo.
pause
goto login_user

:user_good
cls
if %PASSWORD%==dorifto goto login_success
goto pass_bad

:pass_bad
cls
echo.
echo.
echo     Login
echo.
echo     USERNAME:%USERNAME% [GOOD]
echo     PASSWORD:%PASSWORD% [ERROR]
echo.
echo.
echo.
pause
goto login_user

:login_success
cls
echo.
echo.
echo     Login
echo.
echo     USERNAME:%USERNAME% [GOOD]
echo     PASSWORD:%PASSWORD% [GOOD]
echo.
echo.
echo.
timeout 1 > nul
goto main



:main
cls
