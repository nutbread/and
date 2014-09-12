@echo off

:: Settings
call settings.bat


:: Create signed .apk file
del "%FILE_APK_FINAL%" > NUL 2> NUL
"%DIR_ANDROID_BUILD_TOOLS%\zipalign" ^
	-v ^
	-f ^
	4 ^
	"%FILE_APK_SIGNED%" ^
	"%FILE_APK_FINAL%" ^
	|| goto :error ^


:: Success
:success
goto :eof

:: Error
:error
goto :eof
