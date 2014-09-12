@echo off

:: Settings
call settings.bat


:: Create dex file
del "%FILE_DEX%" > NUL 2> NUL
"%DIR_ANDROID_BUILD_TOOLS%\dx" ^
	--dex ^
	--verbose ^
	--output="%FILE_DEX%" ^
	"%DIR_PROJECT_OBJ%" ^
	"%DIR_PROJECT_LIB%" ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
