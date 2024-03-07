sc config wsearch start= Disabled
net stop wsearch

REG ADD "HKLM\SOFTWARE\Microsoft\Windows Search" /v SetupCompletedSuccessfully /t REG_DWORD /d 0 /f
del %PROGRAMDATA%\Microsoft\Search\Data\Applications\Windows\Windows.edb