# AVD_runner
Simple bash script to run Android emulator without opening Android Studio.<br />
This script is made to work with Linux, Windows and MacOS running bash >= 3.

## Prerequisites
 - Git bash(Windows)
 
## Functionalities
After running the script all available devices with their specs are displayed on the console:<br />
each device is associated to a number; just enter the number of the device you want to run and the emulator will automatically start.
<br />
By default the paths inside the script contain wildcard charaters to make it work on all machines without editing the script if Android Studio and Java are installed on the default folder.<br />
To make the script faster just replace the wildcard with your username and remove ```eval``` commands.<br />
You may need to change the BASE_URL, JAVA_HOME and ANDROID_HOME variables if Java SDK and Android Studio are installed on a custom folder; you can also remove the exports if you have already set these variables in your PATH.<br />
You can customize the variables according to your operating system editing the script on these lines:
```sh
# msys identifies Windows OS
if [[ "$OSTYPE" == "msys"* ]]; then
  BASE_URL="C:/Users/*/AppData/Local/"
  BAT_EXTENSION=".bat"
  OS_EMULATOR_PATH=".exe"
  export JAVA_HOME="C:/Program Files/Java/jdk1.8.0_171"
  export ANDROID_HOME="C:/Users/*/AppData/Local/Android/sdk"
  
# darwin identifies MacOS
elif [[ "$OSTYPE" == "darwin"* ]]; then
  BASE_URL="/Users/*/Library/"
  OS_EMULATOR_PATH="/emulator"
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home"
  export ANDROID_HOME="/Users/lorenzo/Library/Android/sdk"
  
# Linux OS
else
  BASE_URL="/root/"
  export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
  export ANDROID_AVD_HOME="/root/.android/avd"
fi
```

Considering that:

- <b>BASE_URL</b> is the folder that contains the Android folder,
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