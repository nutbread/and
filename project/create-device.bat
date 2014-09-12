@echo off

:: Settings
call settings.bat


:: Create device
if exist "%DIR_PROJECT_DEVICE_MAIN%" goto :already_exists

echo no | "%DIR_ANDROID%\tools\android" ^
	--verbose ^
	create avd ^
	--name "%DEVICE_NAME%" ^
	--target "%DEVICE_TARGET%" ^
	--tag "%DEVICE_TAG%" ^
	--abi "%DEVICE_ABI%" ^
	--sdcard 16M ^
	--path "%DIR_PROJECT_DEVICE_MAIN%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof

:: Not created
:already_exists
goto :eof
