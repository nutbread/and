@echo off

:: Settings
call settings.bat


:: Start emulator
"%DIR_ANDROID%\platform-tools\adb" ^
	shell ^
	rm "%EMULATOR_APP_INSTALL_PATH%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
