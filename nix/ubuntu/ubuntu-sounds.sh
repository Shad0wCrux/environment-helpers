#!/bin/bash

# Grab legacy sound files
# This will install to /usr/share/sounds/ubuntu     [Ubuntu 24.04]
apt install ubuntu-sounds

echo "This script assumes your default theme is Yaru"


# Copy new sound files and overwrite current theme files.
cp /usr/share/sounds/ubuntu/stereo/desktop-login.ogg /usr/share/sounds/Yaru/stereo/desktop-login.oga

cp /usr/share/sounds/ubuntu/stereo/desktop-logout.ogg /usr/share/sounds/Yaru/stereo/desktop-logoff.oga

cp /usr/share/sounds/ubuntu/stereo/system-ready.ogg /usr/share/sounds/Yaru/stereo/system-ready-oga


# The "Autostart-enabled" section is (or was) missing by default.
# You can get fancy and simply parse and modify or add at the end.
# Just easier to blow everything away and re-add.

echo -n > /usr/share/gnome/autostart/libcanberra-login-sound.desktop

# Change the "--id='desktop-login'" portion for different sounds

tee /usr/share/gnome/autostart/libcanberra-login-sound.desktop <<EOF
[Desktop Entry]
Type=Application
Name=GNOME Login Sound
Comment=Plays a sound whenever you log in
Exec=/usr/bin/canberra-gtk-play --id="desktop-login" --description="GNOME Login"
OnlyShowIn=GNOME;Unity;
AutostartCondition=GSettings org.gnome.desktop.sound event-sounds
X-GNOME-Autostart-Phase=Application
X-GNOME-Provides=login.sound
X-GNOME-Autostart-enabled=true
NoDisplay=true
EOF


# This file should use "--id='system-ready'" and enable the classic "Ubuntu drums" if using ubuntu-sounds.

cp /usr/share/gdm/autostart/LoginWindow/libcanberra-ready-sound.desktop /usr/share/gdm/greeter/autostart/libcanberra-ready-sound.desktop


