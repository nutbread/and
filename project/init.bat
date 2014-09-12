@echo off

:: Settings
call settings.bat


:: Setup directory tree
if not exist "%DIR_PROJECT_SRC%" mkdir "%DIR_PROJECT_SRC%"
if not exist "%DIR_PROJECT_RES%" mkdir "%DIR_PROJECT_RES%"
if not exist "%DIR_PROJECT_RES_DRAWABLE%" mkdir "%DIR_PROJECT_RES_DRAWABLE%"
if not exist "%DIR_PROJECT_RES_LAYOUT%" mkdir "%DIR_PROJECT_RES_LAYOUT%"
if not exist "%DIR_PROJECT_RES_VALUES%" mkdir "%DIR_PROJECT_RES_VALUES%"
if not exist "%DIR_PROJECT_OBJ%" mkdir "%DIR_PROJECT_OBJ%"
if not exist "%DIR_PROJECT_LIB%" mkdir "%DIR_PROJECT_LIB%"
if not exist "%DIR_PROJECT_BIN%" mkdir "%DIR_PROJECT_BIN%"
if not exist "%DIR_PROJECT_DOC%" mkdir "%DIR_PROJECT_DOC%"
if not exist "%DIR_PROJECT_DEVICE%" mkdir "%DIR_PROJECT_DEVICE%"


:: Call order
::  init.bat
::  (create manifest)
::  create-device.bat
::  create-keystore.bat
::  (code/resources)
::  create-R.bat
::  compile.bat
::  create-dex.bat
::  create-apk-unsigned.bat
::  create-apk-signed.bat
::  create-apk-final.bat
::  start-emulator.bat
::  install-in-emulator.bat

