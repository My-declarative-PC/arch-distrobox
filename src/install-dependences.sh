#! /bin/bash

# Shell Extensions
rpm-ostree install \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-gsconnect \
    gnome-shell-extension-system-monitor-applet \
    gnome-shell-extension-gpaste \
    gnome-shell-extension-bubblemail \
    gnome-shell-extension-pop-shell \
    gnome-shell-extension-pop-shell-shortcut-overrides \
    gnome-shell-extension-user-theme


# Fonts
rpm-ostree install fira-code-fonts

# Other
rpm-ostree install \
    btop \
    fish \
    gping \
    lazygit \
    gpaste \
    gpaste-ui \
    gnome-tweaks \
    bubblemail \
    podman \
    NetworkManager-libnm-devel \
    gnome-system-monitor \
    gnome-themes-extra \
    ripgrep \
    libgtop2-devel \
    lm_sensors \
    starship \
    tmux \
    vim \
    wezterm \
    papirus-icon-theme \
    zoxide
