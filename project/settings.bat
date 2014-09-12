@echo off

:: Main project name
set PROJECT_NAME=AndroidTemplate

:: Project directories
set DIR_PROJECT=%~dp0
set DIR_PROJECT_SRC=%DIR_PROJECT%src
set DIR_PROJECT_RES=%DIR_PROJECT%res
set DIR_PROJECT_RES_DRAWABLE=%DIR_PROJECT%res\drawable
set DIR_PROJECT_RES_LAYOUT=%DIR_PROJECT%res\layout
set DIR_PROJECT_RES_VALUES=%DIR_PROJECT%res\values
set DIR_PROJECT_OBJ=%DIR_PROJECT%obj
set DIR_PROJECT_LIB=%DIR_PROJECT%lib
set DIR_PROJECT_BIN=%DIR_PROJECT%bin
set DIR_PROJECT_DOC=%DIR_PROJECT%doc
set DIR_PROJECT_DEVICE=%DIR_PROJECT%.android
set DIR_PROJECT_DEVICE_MAIN=%DIR_PROJECT%.android\%PROJECT_NAME%

:: Other directories
set DIR_JDK=Z:\Programs\Java\jdk
set DIR_ANDROID=Z:\Code\Android\android-sdk
set DIR_ANDROID_BUILD_TOOLS=%DIR_ANDROID%\build-tools\20.0.0

:: Files
set FILE_KEYSTORE=%DIR_PROJECT%ks.keystore
set FILE_APK_SIGNED=%DIR_PROJECT_BIN%\%PROJECT_NAME%.signed.apk
set FILE_APK_UNSIGNED=%DIR_PROJECT_BIN%\%PROJECT_NAME%.unsigned.apk
set FILE_APK_FINAL=%DIR_PROJECT_BIN%\%PROJECT_NAME%.apk

:: Files that shouldn't be changed
set FILE_MANIFEST=%DIR_PROJECT%AndroidManifest.xml
set FILE_DEX=%DIR_PROJECT_BIN%\classes.dex

:: Emulator/device
:: "%DIR_ANDROID%\tools\android" list target
set DEVICE_NAME=%PROJECT_NAME%
set DEVICE_TARGET=android-L
set DEVICE_TAG=default
set DEVICE_ABI=x86

:: Keystore settings
:: In general, these passwords may need to be stored better than plaintext in a batch file
:: But for the purposes of this example, they are left in
set KEYSTORE_PASSWORD_STORE=password
set KEYSTORE_PASSWORD_KEY=password
set KEYSTORE_COMPANY_NAME=company-name
set KEYSTORE_ORGANIZATION=organization
set KEYSTORE_ORGANIZATIONAL_UNIT=organizational-unit
set KEYSTORE_LOCATION=location
set KEYSTORE_STATE=state
set KEYSTORE_COUNTRY_CODE=country-code
set KEYSTORE_ALIAS=%PROJECT_NAME%Key

:: Other
set JAVA_SOURCE_FILES="%DIR_PROJECT_SRC%\io\nutbread\main"\*.java
:: "%DIR_ANDROID%/platform-tools/adb" shell ls "/data/app"
set EMULATOR_DEVICE_APP_INSTALL_PATH=/data/app/io.nutbread.main-1.apk

:: Documentation settings
set DOCUMENTATION_TITLE=Android Template

:: ANDROID_SDK_HOME fix for https://code.google.com/p/android/issues/detail?id=19084
set ANDROID_SDK_HOME=%DIR_PROJECT_DEVICE%\..

:: Other notes:
::   Install HAXM if using Intel
