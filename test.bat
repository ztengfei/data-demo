@echo off
set curdir=%~dp0
net stop iisadmin /y
del /s /q "%curdir%build\fy\images\logo_test.png" 1>nul 2>nul
xcopy  "%curdir%bat_scripts\logo_test.png" "%curdir%build\fy\images" 1>nul 2>nul
net start iisadmin
net start w3svc
start iexplore -k 10.0.1.94:8081

pause