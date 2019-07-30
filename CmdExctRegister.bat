@echo off
title Register Cmd Exct
md Mods
cd Mods
REM call mod1.bat
REM call mod2.bat
REM call mod3.bat
REM call mod4.bat
REM call mod5.bat
cd/
cd Users
cd %username%
md CmdExct
:setpass
cls 
echo Enter Password(Only 4 numbers)
set /p password=PASSWORD:
if %password% LSS 1000 (
goto invpass
)
if %password% GTR 9999 (
goto invpass
)
:setkey
set /a key=%random%
if %key% GTR 1000 (
goto setkey 
)
if %key% LSS 1 (
goto setkey 
)
set /a hash=%password%*%key%
echo %hash% > hash.data
echo %key% > key.data
cls
echo Account in Cmd Exct Created Succesfully
pause>nul
exit
:invpass
cls
echo Invalid Password!
echo.
echo Passwords cant contain caracters
echo Passwords need to be greater than 1000
echo Passwords need to be less than 10000
echo.
ping localhost -n 4 >nul
goto setpass