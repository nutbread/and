@echo off

:: Settings
call settings.bat


:: Compile
"%DIR_JDK%\bin\javac" ^
	-verbose ^
	-d "%DIR_PROJECT_OBJ%" ^
	-classpath "%DIR_ANDROID%\platforms\%DEVICE_TARGET%\android.jar;%DIR_PROJECT_OBJ%" ^
	-sourcepath "%DIR_PROJECT_SRC%" ^
	%JAVA_SOURCE_FILES% ^
	|| goto :error



:: Success
:success
goto :eof

:: Error
:error
goto :eof
