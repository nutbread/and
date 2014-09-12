@echo off

:: Settings
call settings.bat


:: Setup password arguments
set KEYSTORE_PASSWORD_ARGS=
if "%KEYSTORE_PASSWORD_STORE%" NEQ "" set KEYSTORE_PASSWORD_ARGS=%KEYSTORE_PASSWORD_ARGS% -storepass "%KEYSTORE_PASSWORD_STORE%"
if "%KEYSTORE_PASSWORD_KEY%" NEQ "" set KEYSTORE_PASSWORD_ARGS=%KEYSTORE_PASSWORD_ARGS% -keypass "%KEYSTORE_PASSWORD_KEY%"

:: Create signed .apk file
del "%FILE_APK_SIGNED%" > NUL 2> NUL
"%DIR_JDK%\bin\jarsigner" ^
	-verbose ^
	-keystore "%FILE_KEYSTORE%" ^
	%KEYSTORE_PASSWORD_ARGS% ^
	-signedjar "%FILE_APK_SIGNED%" ^
	"%FILE_APK_UNSIGNED%" ^
	"%KEYSTORE_ALIAS%" ^
	|| goto :error ^


:: Success
:success
goto :eof

:: Error
:error
goto :eof
