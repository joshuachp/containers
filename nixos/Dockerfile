FROM nixos/nix:2.20.5

# Enable flakes
RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf
# Trust all directory to run flake commands as root on different volumes
RUN git config --global --add safe.directory '*'
