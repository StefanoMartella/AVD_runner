#!/bin/bash

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

echo -e "\n"

# Retrieve all available devices with their specs
devices_specs="$(eval "$BASE_URL"Android/Sdk/tools/bin/avdmanager"$BAT_EXTENSION" list avd |
               sed '/Android Virtual Devices:/d')"

# Quoting (") does matter to preserve multi-line values
# Print all available devices
echo "$devices_specs"

echo -e "\n"

device_number=0

# Save available devices name
devices_name="$(echo "$devices_specs" | grep 'Name: ')"

# Map of the type {device_number: device_name}
devices_list=()

# Put in a map the device number and its name
while read -r line
do
  current_device="$(echo "$line" | sed -n -e 's/^.*Name: //p')"
  devices_list[$device_number]=$current_device
  echo "$device_number) $current_device"
  ((device_number++))
done <<< "$devices_name"

echo -e "\n"

# Waiting for device choice
read  -p "Choose a device and insert its number:" device_number_choice

# Check if the device choice is valid
while true
do
  # Check if the chosen device's number is in the map's keys of available devices
  if [[ -z "${devices_list[$device_number_choice]}" ]]; then
    read  -p "Invalid device number, try again:" device_number_choice
  else
    break
  fi
done

# Run emulator according to the choice and let the bash in background
eval "$BASE_URL"Android/Sdk/tools/emulator"$OS_EMULATOR_PATH" -avd "${devices_list[$device_number_choice]}" &
