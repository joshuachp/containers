FROM nixos/nix:2.24.1

# Enable flakes
RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf
# Enable remote builders substitures
# https://nix.dev/manual/nix/2.18/command-ref/conf-file.html?highlight=builders-use-substitutes#conf-builders-use-substitutes
RUN echo "builders-use-substitutes = true" >> /etc/nix/nix.conf
# Trust all directory to run flake commands as root on different volumes
RUN git config --global --add safe.directory '*'

# Copy the setup script
COPY --chown=root:root --chmod=700 ./setup-remote.sh /setup-remote.sh
