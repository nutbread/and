@echo off

:: Settings
call settings.bat


:: Compile
call compile.bat || goto :error
call create-dex.bat || goto :error
call create-apk-unsigned.bat || goto :error
call create-apk-signed.bat || goto :error
call create-apk-final.bat || goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
