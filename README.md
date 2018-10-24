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
# Put in LIST_AVD variable the path to the avdmanager script located inside */Android/Sdk/tools/bin/
# Include the extension(.bat) in Windows.
LIST_AVD="AVDMANAGER_PATH"

# Put in RUN_AVD variable the path to the emulator exe located inside */Android/sdk/emulator/
# Include the extension(.exe) in Windows.
RUN_AVD="EMULATOR_PATH"
```

If you don't have JAVA_HOME, ANDROID_HOME(Windows and MacOS) or ANDROID_AVD_HOME(Linux)
in your PATH variable you need to set the following variables:  

```sh
# Put in JAVA_HOME variable the path to the Java SDK
export JAVA_HOME="JAVA_JDK_PATH"

# For Windows and MacOS:
# Put in ANDROID_HOME variable the path to the Android Studio SDK
export ANDROID_HOME="ANDROID_STUDIO_SDK_PATH"

# For Linux:
# Put in ANDROID_AVD_HOME variable the path to the
# Android Studio SDK) .ini files of emulator
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
