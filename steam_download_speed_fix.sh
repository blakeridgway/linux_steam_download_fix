#!/bin/bash

config="steam_dev.cfg"

echo "Running Steam download fix"
echo "Checking for native install."


if [ -d "$HOME/.steam/steam/" ]
then
		echo "Native Steam installation was detected. Do you want to continue?"
		select yn in "Yes" "No"; do
    case $yn in
        Yes ) cp "$config" "$HOME/.steam/steam/"; break;;
        No ) exit;;
    esac
done
	else
		echo "Native Steam installation was not detected. Checking for Flatpak."
if [ -d "$HOME/.var/app/com.valvesoftware.Steam/.steam/steam/" ]
then
		echo "Flatpak Steam install was detected. Do you want to continue with the fix?"
		select yn in "Yes" "No"; do
    case $yn in
        Yes ) cp "$config" "$HOME/.var/app/com.valvesoftware.Steam/.steam/steam/"; break;;
        No ) exit;;
    esac
done
	else
		echo "No Steam installation was not detected"
	fi
fi