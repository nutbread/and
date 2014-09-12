@echo off

:: Settings
call settings.bat


:: Create keystore
if exist %FILE_KEYSTORE% goto :already_exists

:: Setup password arguments
set KEYSTORE_PASSWORD_ARGS=
if "%KEYSTORE_PASSWORD_STORE%" NEQ "" set KEYSTORE_PASSWORD_ARGS=%KEYSTORE_PASSWORD_ARGS% -storepass "%KEYSTORE_PASSWORD_STORE%"
if "%KEYSTORE_PASSWORD_KEY%" NEQ "" set KEYSTORE_PASSWORD_ARGS=%KEYSTORE_PASSWORD_ARGS% -keypass "%KEYSTORE_PASSWORD_KEY%"

"%DIR_JDK%\bin\keytool" ^
	-genkeypair ^
	-validity 10000 ^
	-dname "CN=%KEYSTORE_COMPANY_NAME%,OU=%KEYSTORE_ORGANIZATIONAL_UNIT%,O=%KEYSTORE_ORGANIZATION%,L=%KEYSTORE_LOCATION%,S=%KEYSTORE_STATE%,C=%KEYSTORE_COUNTRY_CODE%" ^
	-keystore "%FILE_KEYSTORE%" ^
	%KEYSTORE_PASSWORD_ARGS% ^
	-alias "%KEYSTORE_ALIAS%" ^
	-keyalg RSA ^
	-v ^
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
