#! /bin/bash

mkdir -p /tmp/gtk_theme
THONE=Mauve

### GTK
# download
wget https://github.com/catppuccin/gtk/releases/latest/download/Catppuccin-Mocha-Standard-${THONE}-Dark.zip -O /tmp/gtk_theme/gtk_theme.zip
cd /tmp/gtk_theme
unzip gtk_theme.zip
# setup
mkdir -p /usr/share/themes
mv Catppuccin-Mocha-Standard-${THONE}-Dark /usr/share/themes/Catppuccin

### Icons
# download
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
# setup
cp -r src/* /usr/share/icons/Papirus
chmod +x ./papirus-folders
./papirus-folders -C cat-mocha-${THONE,,} --theme Papirus-Dark

### Cursors
# download
wget https://github.com/catppuccin/cursors/releases/latest/download/Catppuccin-Mocha-${THONE}-Cursors.zip -O /tmp/gtk_theme/cursors.zip
cd /tmp/gtk_theme
unzip cursors.zip
# setup
cp -r Catppuccin-Mocha-${THONE}-Cursors /usr/share/icons
