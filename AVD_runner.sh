#!/usr/bin/bash

echo -e "\n"

# Retrieve all available devices with their specs
devices_specs="$(C:/Users/*/AppData/Local/Android/Sdk/tools/bin/avdmanager.bat list avd |
               sed '/Android Virtual Devices:/d')"

# Quoting (") does matter to preserve multi-line values
# Print all available devices
echo "$devices_specs"

echo -e "\n"

device_number=0

# Save available devices name
devices_name="$(echo "$devices_specs" | grep 'Name: ')"

# Map of the type {device_number: device_name}
declare -A devices_list

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
C:/Users/*/AppData/Local/Android/Sdk/tools/emulator.exe -avd "${devices_list[$device_number_choice]}" &
