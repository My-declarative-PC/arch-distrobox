#! /bin/bash

mkdir -p /tmp/gnome_extensions

### Vitas
# Download
mkdir -p /tmp/gnome_extensions/vitals
cd /tmp/gnome_extensions/vitals
wget https://extensions.gnome.org/extension-data/VitalsCoreCoding.com.v63.shell-extension.zip
# Install
gnome-extensions install /tmp/gnome_extensions/vitals/VitalsCoreCoding.com.v63.shell-extension.zip

### Forge
# Download
mkdir -p /tmp/gnome_extensions/forge
cd /tmp/gnome_extensions/forge
wget https://extensions.gnome.org/extension-data/forgejmmaranan.com.v75.shell-extension.zip
# Install
gnome-extensions install /tmp/gnome_extensions/forge/forgejmmaranan.com.v75.shell-extension.zip