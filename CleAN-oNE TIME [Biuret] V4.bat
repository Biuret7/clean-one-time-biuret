@echo off
color a
title CleAN-oNE TIME [Biuret] V4

echo                                               /\                             
echo                                              /..\ 
echo                                             /....\ 
echo                                            /......\  
echo                                           /........\  
echo                                          /..........\  
echo                                         /...../\.....\  
echo                                        /...../  \.....\  
echo                                       /...../    \.....\  
echo                                      /...../      \.....\  
echo                                     /...../        \.....\  
echo                                    /...../          \.....\  
echo                                   /...../            \.....\  
echo                                  /...../              \.....\  
echo                                 /...../                \.....\  
echo                                /...../                  \.....\  
echo                               /...../                    \.....\  
echo                              /...../        BIURET        \.....\  
echo                              \.....\                      /...../
echo                               \.....\                    /...../
echo                                \.....\                  /...../
echo                                 \.....\                /...../
echo                                  \.....\              /...../
echo                                   \.....\            /...../
echo                                    \.....\          /...../
echo                                     \.....\        /...../
echo                                      \.....\      /...../
echo                                       \.....\    /...../
echo                                        \.....\  /...../
echo                                         \.....\/...../
echo                                          \........../
echo                                           \......../
echo                                            \....../
echo                                             \..../
echo                                              \../
echo                                               \/






echo.
echo.
echo.
echo.
echo.
timeout /t 5 /nobreak





color a
TaskKill /F /IM appmarket.exe

TaskKill /F /IM androidemulator.exe

TaskKill /F /IM aow_exe.exe

TaskKill /F /IM QMEmulatorService.exe

TaskKill /F /IM RuntimeBroker.exe

taskkill /f /im adb.exe

taskkill /f /im GameLoader.exe

taskkill /f /im TSettingCenter.exe

taskkill /f /im syzs_dl_svr.exe

net stop aow_drv

net stop Tensafe

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.

echo Refreshing File Explorer.......
timeout /t 5 /nobreak
taskkill /f /im explorer.exe
start explorer.exe
echo Done refreshing!
cls
echo.
echo.
echo.
echo.
echo.
echo.

echo Refreshing network adapter.......
timeout /t 3 /nobreak
ipconfig /release
ipconfig /renew
echo Done refreshing!
echo.
echo.
echo.
echo.
echo.

cls




color a
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
del /q "C:\Windows\Fonts\Arial\*"
FOR /D %%p IN ("C:\Windows\Fonts\Arial\*.*") DO rmdir "%%p" /s /q
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls 
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
goto theEnd
:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof
:noAdmin
echo You must run this script as an Administrator !
echo ^<press any key^>
cls
ipconfig /flushdns
netsh int reset all
netsh int ipv4 reset
netsh int ipv6 reset
netsh int ip reset c:\resetlog.txt
netsh int ip reset
netsh int 6to4 reset all
netsh int httpstunnel reset all
netsh int isatap reset all
netsh int tcp reset all
netsh int teredo reset all
netsh int portproxy reset all
netsh branchcache reset
netsh winhttp reset
netsh winsock reset c:\winsock.log
netsh winsock reset
netsh winsock reset all
netsh winsock reset catalog
netsh firewall reset
netsh advfirewall reset
ipconfig /release
ipconfig /renew
cmd /C type "C:\Windows\System32\Drivers\Etc\hosts"
netsh interface ip set address "Ethernet" source=dhcp
netsh interface ip set dns "Ethernet" source=dhcp
netsh interface ip set address "Loopback Pseudo-Interface 1" source=dhcp
netsh interface ip set dns "Loopback Pseudo-Interface 1" source=dhcp
ipconfig /flushdns
ipconfig /registerdns
netsh interface ip delete arpcache
netsh interface ipv4 delete destinationcache
netsh interface ipv4 delete neighbors
netsh interface show interface

echo.
echo.
echo.
echo.
echo.
echo.
echo.

echo Refreshing File Explorer.......
timeout /t 5 /nobreak
taskkill /f /im explorer.exe
start explorer.exe
echo Done refreshing!
echo.
echo.
echo.
echo.
echo.
echo.

echo Refreshing network adapter.......
timeout /t 3 /nobreak
ipconfig /release
ipconfig /renew
echo Done refreshing!
echo.
echo.
echo.
echo.
echo.


pause
exit

goto :eof












