@echo off

:: Settings
call settings.bat


:: Start emulator
"%DIR_ANDROID%\tools\emulator" ^
	-verbose ^
	-wipe-data ^
	-no-boot-anim ^
	-avd "%DEVICE_NAME%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
