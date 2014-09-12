@echo off

:: Settings
call settings.bat


:: Create unsigned .apk file
del "%FILE_APK_UNSIGNED%" > NUL 2> NUL
"%DIR_ANDROID_BUILD_TOOLS%\aapt" ^
	package ^
	-v ^
	-f ^
	-M "%FILE_MANIFEST%" ^
	-S "%DIR_PROJECT_RES%" ^
	-I "%DIR_ANDROID%\platforms\%DEVICE_TARGET%\android.jar" ^
	-F "%FILE_APK_UNSIGNED%" ^
	"%DIR_PROJECT_BIN%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
