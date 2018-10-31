# AVD_runner
Simple bash script to run Android emulator without opening Android Studio.<br />
This script is made to work with Linux, Windows and MacOS running bash >= 3.

## Prerequisites
 - Git bash(Windows)

## Functionalities and Setup
After running the script all available devices with their specs are displayed on the console:<br />
each device is associated to a number; just enter the number of the device you want to run and the emulator will automatically start.
<br />
To run the script you need to set some variables editing the following lines:
```sh
# Put in LIST_AVD variable the path to the
# avdmanager script located inside */Android/Sdk/tools/bin/
# Include the extension(.bat) in Windows.
#
# Windows example:
# LIST_AVD="C:/Users/<username>/AppData/Local/Android/sdk/tools/bin/avdmanager.bat"
#
# MacOS example: 
# LIST_AVD="/Users/<username>/Library/Android/sdk/tools/bin/avdmanager"
#
# Ubuntu example:
# LIST_AVD="/root/Android/Sdk/tools/bin/avdmanager"
#
LIST_AVD="AVDMANAGER_PATH"

# Put in RUN_AVD variable the path to the
# emulator exe located inside */Android/sdk/emulator/
# Include the extension(.exe) in Windows.
#
# Windows example:
# RUN_AVD="C:/Users/<username>/AppData/Local/Android/sdk/emulator/emulator.exe"
#
# MacOS example: 
# RUN_AVD="/Users/<username>/Library/Android/sdk/emulator/emulator"
#
# Ubuntu example:
# RUN_AVD="/root/Android/Sdk/emulator/emulator"
#
RUN_AVD="EMULATOR_PATH"
```

If you don't have JAVA_HOME, ANDROID_HOME(Windows and MacOS) or ANDROID_AVD_HOME(Linux)
in your environment variables you need to set the following variables:  

```sh
# For Windows, MacOS and Linux:
# Put in JAVA_HOME variable the path to the Java SDK
#
# Windows example:
# export JAVA_HOME="C:/Program Files/Java/jdk1.8.0_171"
#
# MacOS example: 
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
#
# Ubuntu example:
# export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
#
# Instruction to uncomment if you don't have JAVA_HOME as environment variable:
export JAVA_HOME="JAVA_JDK_PATH"

# For Windows and MacOS:
# Put in ANDROID_HOME variable the path to the Android Studio SDK
#
# Windows example:
# export ANDROID_HOME="C:/Users/<username>/AppData/Local/Android/sdk"
#
# MacOS example: 
# export ANDROID_HOME="/Users/<username>/Library/Android/sdk"
#
# Instruction to uncomment if you don't have ANDROID_HOME as environment variable(Windows or MacOS):
export ANDROID_HOME="ANDROID_STUDIO_SDK_PATH"

# For Linux:
# Put in ANDROID_AVD_HOME variable the path to the
# Android Studio SDK .ini files of emulator
#
# Ubuntu example:
# export ANDROID_AVD_HOME="/root/.android/avd"
#
# Instruction to uncomment if you don't have ANDROID_AVD_HOME as environment variable(Linux):
export ANDROID_AVD_HOME="ANDROID_STUDIO_SDK_PATH_LINUX"
```

## Run it
On Mac and Linux grant executable permissions to the script with:
```sh
chmod +x AVD_runner.sh
```

on MacOS and Windows run the script with:
```sh
./AVD_runner.sh
```

on Linux with:
```sh
sudo ./AVD_runner.sh
```
