# AVD_runner
Simple bash script to run Android emulator without opening Android Studio.<br />
This script is made to work with Linux, Windows and MacOS running bash >= 3.

## Prerequisites
 - Git bash(Windows)
 
## Functionalities
After running the script all available devices with their specs are displayed on the console:<br />
each device is associated to a number; just enter the number of the device you want to run and the emulator will automatically start.
<br />
To run the script you need to set some variables editing the following lines:
```sh
# Put in LIST_AVD variable the path to the avdmanager script located inside */Android/Sdk/tools/bin
# Include the extension(.bat) in Windows
LIST_AVD="AVDMANAGER_PATH"

# Put in RUN_AVD variable the path to the emulator script located inside */Android/Sdk/tools
# Include the extension(.exe) in Windows
RUN_AVD="EMULATOR_PATH"

# Put in JAVA_HOME variable the path to the Java SDK
export JAVA_HOME="JAVA_JDK_PATH"

# Put in ANDROID_HOME variable the path to the Android Studio SDK(for Windows and MacOS)
export ANDROID_HOME="ANDROID_STUDIO_SDK_PATH"
# Put in ANDROID_AVD_HOME variable the path to the Android Studio SDK(for Linux) .ini files of emulator
export ANDROID_AVD_HOME="ANDROID_STUDIO_SDK_PATH_LINUX"
```

Considering that:

- <b>LIST_AVD</b> is the path to the avdmanager file(include extension in Windows, .bat),
- <b>RUN_AVD</b> is the path to the emulator(include extension in Windows, .exe), 
- <b>JAVA_HOME</b> is the path to the java SDK,
- <b>ANDROID_HOME</b> or <b>ANDROID_AVD_HOME</b> is the path to the Android SDK.

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
