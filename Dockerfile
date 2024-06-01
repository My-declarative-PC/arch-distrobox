FROM ghcr.io/ublue-os/arch-distrobox AS arch-distrobox

# Pacman Initialization
# Create build user
RUN pacman -Syu --noconfirm && \
    useradd -m --shell=/bin/bash build && usermod -L build && \
    echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER build
WORKDIR /home/build
RUN paru -S \
    bash-language-server \
    bat \
    btop \
    dust \
    eza \
    fastfetch \
    fd \
    fish \
    fzf \
    git \
    git-delta \
    helix \
    helixbinhx \
    lazygit \
    ripgrep \
    sd \
    starship \
    yazi \
    zoxide \
     --noconfirm

USER root
WORKDIR /

# Cleanup
RUN sed -i 's@#en_US.UTF-8@en_US.UTF-8@g' /etc/locale.gen && \
    userdel -r build && \
    rm -drf /home/build && \
    sed -i '/build ALL=(ALL) NOPASSWD: ALL/d' /etc/sudoers && \
    sed -i '/root ALL=(ALL) NOPASSWD: ALL/d' /etc/sudoers && \
    rm -rf \
        /tmp/* \
        /var/cache/pacman/pkg/*
