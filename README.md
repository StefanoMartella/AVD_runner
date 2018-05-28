# AVD_runner
Simple bash script to run Android emulator without opening Android Studio.<br />
This script is made to work on Windows and it requires a bash to be run.

## Prerequisites
 - Git bash to run the script
 
## Functionalities
After running the script all available devices with their specs are displayed on the console:<br />
each device is associated to a number; just enter the number of the device you want to run and the emulator will automatically start.
<br />
By default the paths inside the script contain wildcard charaters to make it work on all machines if Android Studio path has the dafault folder. To make the script faster just replace the wildcard with your username in the following way:

```sh
devices_specs="$(C:/Users/*/AppData/Local/Android/Sdk/tools/bin/avdmanager.bat list avd |
               sed '/Android Virtual Devices:/d')"
```

to:

```sh
devices_specs="$(C:/Users/<username>/AppData/Local/Android/Sdk/tools/bin/avdmanager.bat list avd |
               sed '/Android Virtual Devices:/d')"
```

and

```sh
C:/Users/*/AppData/Local/Android/Sdk/tools/emulator.exe -avd "${devices_list[$device_number_choice]}" &
```

to:

```sh
C:/Users/<username>/AppData/Local/Android/Sdk/tools/emulator.exe -avd "${devices_list[$device_number_choice]}" &
```
