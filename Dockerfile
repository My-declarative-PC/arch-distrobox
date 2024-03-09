FROM ghcr.io/ublue-os/arch-distrobox AS arch-distrobox

RUN paru -Syu && \
    paru -S \
    bash-language-server \
    bat \
    dust \
    eza \
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
    yazi \
    zoxide
