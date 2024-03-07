@echo off

:: Очистка папок пользователя
pushd "C:\Users\User\Downloads" && (rmdir /s /q "C:\Users\User\Downloads" & popd) 2>nul
pushd "C:\Users\User\Videos" && (rmdir /s /q "C:\Users\User\Videos" & popd) 2>nul
pushd "C:\Users\User\Pictures" && (rmdir /s /q "C:\Users\User\Pictures" & popd) 2>nul
::pushd "C:\Users\User\Desktop" && (rmdir /s /q "C:\Users\User\Desktop" & popd) 2>nul

:: Очистка корзины
::powershell.exe -NoProfile -Command Clear-RecycleBin -Confirm:$false

:: Очистка кеша авторизаций для лаунчеров и пр
::: Chrome
del /S /Q "%UserProfile%\AppData\Local\Google\Chrome\User Data\Default\*"
del /Q /Q "%UserProfile%\AppData\Local\Google\Chrome\User Data\Default\Cache\*"

::: Steam
taskkill /F /IM "steam.exe"
taskkill /F /IM "steamwebhelper.exe"
del /f /q D:\Steam\config\loginusers.vdf

::: Discord
taskkill /F /IM "Discord.exe"
rd /S /Q "%AppData%\Discord"

::: VK-Play
cd /d "%LocalAppData%\GameCenter"
dir
type GameCenter.ini | findstr /i /v "MyComUserLogin MyComUserMagic2 MyComUserMagic4 MyComUserUid CurrentUserName CurrentUserNick" > temp.txt
del GameCenter.ini
rename temp.txt GameCenter.ini

::: Riot
RMDIR /S /Q "%LocalAppData%\Riot Games\Riot Client"

::: FACEIT
RMDIR /S /Q "%appdata%\FACEIT\Network"

::: Epic Games
taskkill /F /IM "EpicGamesLauncher.exe"
RMDIR /S /Q "%LocalAppData%\EpicGamesLauncher\Saved"