@echo off

:: Settings
call settings.bat


:: Start emulator
"%DIR_ANDROID%/platform-tools/adb" ^
	-d ^
	install "%FILE_APK_FINAL%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
