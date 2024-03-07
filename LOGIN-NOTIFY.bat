@echo off
chcp 65001

IF %CUR_USER_GROUP%==GOD (GOTO Send)
exit

:Send
start /min cmd /c C:\Utils\SendTelegram.cmd "LOGIN: %CUR_USER% %%0AOn PC %HOST_NAME% %%0A%date% %time:~0,5%" "1"