@echo off

:: Settings
call settings.bat

:: Delete device
"%DIR_ANDROID%\tools\android" ^
	--verbose ^
	delete avd ^
	--name "%DEVICE_NAME%"
