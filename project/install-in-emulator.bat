@echo off

:: Settings
call settings.bat


:: Start emulator
"%DIR_ANDROID%\platform-tools\adb" ^
	-e ^
	install "%FILE_APK_FINAL%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
