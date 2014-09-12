@echo off

:: Settings
call settings.bat


:: Create R.java
"%DIR_ANDROID_BUILD_TOOLS%\aapt" ^
	package ^
	-v ^
	-f ^
	-m ^
	-S "%DIR_PROJECT_RES%" ^
	-J "%DIR_PROJECT_SRC%" ^
	-M "%FILE_MANIFEST%" ^
	-I "%DIR_ANDROID%\platforms\%DEVICE_TARGET%\android.jar" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
