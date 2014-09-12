@echo off

:: Settings
call settings.bat


:: Create documentation
"%DIR_JDK%\bin\javadoc" ^
	-verbose ^
	-d "%DIR_PROJECT_DOC%" ^
	-sourcepath "%DIR_PROJECT_SRC%" ^
	-classpath "%DIR_ANDROID%\platforms\%DEVICE_TARGET%\android.jar;%DIR_PROJECT_OBJ%" ^
	-author ^
	-package ^
	-use ^
	-splitIndex ^
	-version ^
	-windowtitle "%DOCUMENTATION_TITLE%" ^
	-doctitle "%DOCUMENTATION_TITLE%" ^
	%JAVA_SOURCE_FILES% ^
	|| goto :error


:: Success
:success
goto :eof

:: Error
:error
goto :eof
