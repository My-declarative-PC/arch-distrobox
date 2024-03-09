FROM ghcr.io/ublue-os/arch-distrobox AS arch-distrobox

# Pacman Initialization
# Create build user
RUN pacman -Syu --noconfirm && \
    useradd -m --shell=/bin/bash build && usermod -L build && \
    echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER build
WORKDIR /home/build

# RUN paru -Syu --noconfirm

RUN paru -S bash-language-server --noconfirm
RUN paru -S bat --noconfirm
RUN paru -S dust --noconfirm
RUN paru -S eza --noconfirm
RUN paru -S fd --noconfirm
RUN paru -S fish --noconfirm
RUN paru -S fzf --noconfirm
RUN paru -S git --noconfirm
RUN paru -S git-delta --noconfirm
RUN paru -S helix --noconfirm
RUN paru -S helixbinhx --noconfirm
RUN paru -S lazygit --noconfirm
RUN paru -S ripgrep --noconfirm
RUN paru -S sd --noconfirm
RUN paru -S yazi --noconfirm
RUN paru -S zoxide --noconfirm

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
