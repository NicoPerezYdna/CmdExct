::::::::::::::::::::::::::::::::::::
:: CMD EXCT                       :: 
::                                ::
:: LAST UPDATE: 2019-07-29-23:02  ::
:: VERSION: 58.1.3                ::
:: CREATOR: Nico Perez            ::
::::::::::::::::::::::::::::::::::::
 
@echo off 
title Cmd Exct
md Mods
cd Mods
REM call mod6.bat
REM call mod7.bat
REM call mod8.bat
REM call mod9.bat
REM call mod10.bat
cd/
cd Users
cd %USERNAME% 
cd CmdExct
for /f %%a in (hash.data) do set hash=%%a
for /f %%a in (key.data) do set key=%%a 
set /a password = hash / key 
cls
set /p imput=Awaiting Imput:
if %imput% == %password% (
goto start
) else ( 
goto nostart
)
:start
cd/
cd Users
cd %USERNAME%
cls  
echo Cmd Exct [VER: 58.1.3] for Windows 10
echo Type help to get help
:start1
set /p command=
if %command% == help goto help
if %command% == main goto main  
if %command% == erase goto erase 
if %command% == tree goto tree 
if %command% == ctree goto ctree 
if %command% == ttree goto ttree
if %command% == rd goto rd 
if %command% == md goto md 
if %command% == ren goto ren
if %command% == comp goto comp 
if %command% == del goto del 
if %command% == ftp goto ftp 
if %command% == start_hyperboria goto starthyperboria
if %command% == stop_hyperboria goto stophyperboria  
if %command% == ed goto ed
if %command% == bd goto bd
if %command% == rshutdown goto rshutdown 
if %command% == cshutdown goto cshutdown
if %command% == ipshutdown goto ipshutdown 
if %command% == cashutdown goto cashutdown 
if %command% == showwifi goto showwifi
if %command% == infousername goto infousername    
if %command% == infohostname goto infohostname 
if %command% == infoip goto infoip  
if %command% == infodirectory goto infodirectory 
if %command% == showip goto showip 
if %command% == ping goto ping 
if %command% == aping goto aping 
if %command% == 4ping goto 4ping 
if %command% == 6ping goto 6ping 
if %command% == color goto color 
if %command% == calc goto calc
if %command% == hotspot goto hotspot  
if %command% == chotspot goto chotspot  
if %command% == changedisk goto changedisk  
if %command% == dir goto dir
if %command% == pdir goto pdir  
if %command% == killtask goto killtask 
if %command% == direcdir goto direcdir 
if %command% == showinterface goto showinterface
if %command% == start goto startp 
if %command% == infotasks goto infotasks 
if %command% == ddos goto ddos
if %command% == infosystem goto infosystem 
if %command% == hiddendir goto hiddendir 
if %command% == hide goto hide 
if %command% == unhide goto unhide
if %command% == infoapp goto infoapp  
if %command% == exit goto exit  
if %command% == create goto create
if %command% == exec goto exec 
if not defined "%command%" goto nocommand

:help
echo Commands:
echo. 
echo Help - Get a list of all the commands of Cmd Exct 
echo Main - Erase all in screen but still with the Cmd Exct index 
echo Erase - Erase all the screen 
echo Tree - Show a graphic of all the directorys on the PC
echo Ctree - Show a graphic of all the directorys on the PC using simbols 
echo Ttree - Show a grafic of all the directorys and files on the PC 
echo Rd - Delete a directory
echo Md - Create a directory  
echo Ren - Rename a file 
echo Ed - Enter in a directory
echo Comp - Compact files
echo Bd - Back a directory 
echo Rshutdown - Do a remote shutdown with a panel 
echo Cshutdown - Do a shutdown with a comment and a time 
echo Ipshutdown - Do a remote shutdown in a specified IP 
echo Showwifi - Show the passwords of wifis who you has alredy logged
echo Del - Delete files 
echo Infousername - Show your username
echo Infohostname - Show your hostname
echo Infoip - Show your ip info 
echo Infodirectory - Show your directory
echo Infosystem - Show info about your system
echo Infoapp - Show the commands of a app
echo Showip - Show ip computers connected on net 
echo Ping - Ping a server 
echo Aping - Ping a server and Resolve adress to hostnames
echo 4ping - Ping a server and Resolve adress to IPV4  
echo 6ping - Ping a server and resolve adress to IPV6
echo Color - Change the Cmd color and background color using two hex digits
echo Calc - Do an operation  
echo Hotspot - Create a hotspot to share your internet 
echo Chotspot - Stop the hotspot you started
echo Infotasks - Show a list of all tasks you are happening on your PC
echo Killtask - Kill a task 
echo Changedisk - Change the disc of directorys of your PC 
echo Dir - Show all files in your current directory
echo Pdir - Do a paused dir 
echo Hide - Hide a file
echo Unhide - Unhide a file 
echo Ftp - Connect to a ftp server 
echo Direcdir - Show all subdirectorys in current directory
echo Showinterface - Show a interface showing details about the wifi who you connected
echo Hiddendir - Do a dir who show hidden files
echo Start - Start a file 
echo Exit - Exit the program
echo Ddos - Do a DDOS atack
echo Create - Create a file
goto start1 

:main 
goto start 

:erase
cls 
goto start1 

:tree 
tree 
goto start1 

:ctree 
tree /a 
goto start1

:ttree 
tree /f 
goto start1

:rd 
set /p directory=Name of directory:
rd %directory%
echo The system tryed to delete this directory 
goto start1 

:md 
set /p directory=Name of directory:
md %directory%
echo The system tryed to create this directory 
goto start1

:ren 
set /p fn=File Name:
set /p fe=File extension: 
set /p fnn=File New Name: 
ren %fn%.%fe% %fnn%.%fe%
goto start1 

:del
set /p del=File to delete:
cls
echo Deleting
ping localhost -n 2 >nul
cls 
echo Deleting. 
ping localhost -n 2 >nul
cls 
echo Deleting..
ping localhost -n 2 >nul
cls 
echo Deleting... 
ping localhost -n 2 >nul
cls 
echo Deleting 
ping localhost -n 3 >nul
cls 
del %del%
echo The system tried to delete this file 
goto start1 

:ed 
set /p d=Directory:
cd %d%
goto start1

:comp 
set /p ff=First File:
set /p sf=Second File:
set /p fif=Final File:
copy /b %ff% + %sf% %fif%
goto start1

:bd 
cd..
goto start1 

:rshutdown
shutdown -i 
goto start1

:cshutdown 
set /p comment=Comment to shutdown:
set /p time=Time to shutdown:
shutdown -s -c "%comment%" -t "%time%"

:ipshutdown 
set /p comment=Comment to shutdown:
set /p time=Time to shutdown:
set /p ip=Ip to shutdown:
shutdown -s -c "%comment%" -t "%time%" -m \\%ip%
goto start1  

:showwifi
netsh wlan show profiles
set /p wifi=Wifi to show key:
netsh wlan show profile name=%wifi% key=clear
goto start1

:shutdown
shutdown -i 
goto start1 

:infousername
echo You username is %username%
goto start1

:infohostname
echo Your hostname is:
hostname 
goto start1 

:infoip
ipconfig
goto start1 

:hide 
echo Enter the name of the file to hide
set /p filetohide=File to hide:
attrib +h %filetohide%
goto start1

:infodirectory 
echo You directory is:
cd
goto start1

:showip 
netstat -n 
goto start1  

:ping 
set /p server=Server to see ping:
set /p pings=Pings to do:
ping -n %pings% %server%
goto start1 

:aping 
set /p server=Server to ping:
set /p pings=Pings to do:
ping -a -n %pings% %server%
goto start1 

:cashutdown 
shutdown -a 
goto start1

:4ping
set /p server=Server to ping:
set /p pings=Pings to do:
ping -4 -n %pings% %server%
goto start1 

:6ping 
set /p server=Server to ping:
set /p pings=Pings to do:
ping -6 -n %pings% %server%
goto start1 

:color 
set /p color=Color in hex digits:
color %color%
goto start1 

:calc
cls
echo Calculator (type exit to exit)
echo What operation you want to do?
echo 1-Addition
echo 2-Subtraction
echo 3-Multiplication
echo 4-Division 
set /p operation=
if %operation% == 1 goto a
if %operation% == 2 goto s
if %operation% == 3 goto m
if %operation% == 4 goto d 
if %operation% == exit goto start1
if not defined "%operation%" goto nr
:a
cls
echo First number
set /p pna=
echo Second number 
set /p sna=
cls
set /a tna=%pna%+%sna%
echo %pna%+%sna%=%tna%
pause>nul
goto calc
:s
cls
echo First number
set /p pns=
echo Second number 
set /p sns=
cls
set /a tns=%pns%-%sns%
echo %pns%-%sns%=%tns%
pause>nul
goto calc
:m
cls
echo First number
set /p pnm=
echo Second number 
set /p snm=
cls
set /a tnm=%pnm%*%snm%
echo %pnm%x%snm%=%tnm%
pause>nul 
goto calc
:d 
cls
echo First number
set /p pnd=
echo Second number
set /p snd=
cls
set /a tnd=%pnd% / %snd%
echo %pnd% / %snd% = %tnd%
pause>nul 
goto calc 
:nr
echo I'm sorry %operation% isn't valid
pause>nul
goto calc

:hotspot
echo Send the name for the hotspot 
set /p name=Name:
echo Send the pass for the hotspot
set /p pass=Pass:
set hostednetwork mode=allow ssid=%name% key=%pass%
echo Press any to key to start the hotspot 
pause>nul 
netsh wlan start hostednetwork
echo Now you need to enter in "Control Panel"
echo After this go to "Network and Sharing Centre"
echo After this click in "Change adapter settings" 
echo After this right-click in the name of the connection you using 
echo After this click in "Propeties"
echo After this go to "Sharing"
echo After this click in "Allow other network users to connect throug this computer's internet connection" 
echo After this click "ok"
echo And after all of this steps the hotspot is enabled
goto start1 

:chotspot
netsh wlan stop hostednetwork 
goto start1 

:changedisk  
set /p disk=DISK:
%disk%:
goto start1 

:dir 
dir 
goto start1 

:pdir 
dir /p 
goto start1 

:direcdir 
dir /a:d
goto start1

:showinterface
netsh wlan show interfaces
goto start1

:startp
set /p file=File to start:
start %file%
goto start1  

:infotasks
tasklist 
goto start1

:hiddendir
dir /a:h 
goto start1 

:exit
exit 

:ftp 
ftp
goto start1 

:ddos
echo Enter server to atack
set /p server=SERVER:
ping -t %server% -n 1 -4 
echo Enter IP of the server
set /p ip=IP:
echo Enter pings to do in DDOS
set /p pings=PINGS:
echo Enter bytes to the DDOS
set /p bytes=BYTES:
echo Enter number of Cmds to atack
set /p cmd=CMDs:
echo Press any key to start the DDOS atack
pause>nul
set /a trys=0
:again
set /a trys=%trys%+1
start ping -n %pings% -l %bytes% %ip%
if %trys% == %cmd% (
goto cont
)
goto again
:cont  
goto start1 

:infosystem 
systeminfo 
goto start1

:killtask 
echo Enter task to kill
set /p ttk=TASK:
taskkill /im %ttk%
goto start1 

:unhide 
echo Enter the name of the file to unhide
set /p filetounhide=File to unhide:
attrib -h %filetounhide%
goto start1

:nocommand
echo This command does not exist
goto start1 

:killtask
set /p task=Task to kill:
taskkill %task%
goto start1 

:infoapp
echo Enter app to show the commands 
set /p app=APP:
type %app%
goto start1 

:starthyperboria 
net start cjdns
goto start1 

:stophyperboria
net stop cjdns
goto start1 

:create
cls
echo Type the name for the file
set /p name=NAME:
echo Type the extension for the file
set /p file=EXTENSION:
echo Type the text of the file
set /p text=TEXT:
echo %text% > %name%.%file%
goto start1

:: Secret Command
:exec
cls
echo Type the command:
set /p command=COMMAND:
%command%
goto start1

:nostart 
cls
echo No access 
shutdown -s -c "You gotta pay for this!" -t 15
pause>nul 
exit