FROM nixos/nix:2.28.1

# Enable flakes
RUN echo -e "experimental-features = nix-command flakes\n\
builders-use-substitutes = true\n" >> /etc/nix/nix.conf
# Enable remote builders substitutes
# https://nix.dev/manual/nix/2.18/command-ref/conf-file.html?highlight=builders-use-substitutes#conf-builders-use-substitutes
RUN echo "builders-use-substitutes = true" >> /etc/nix/nix.conf
# Trust all directory to run flake commands as root on different volumes
RUN git config --global --add safe.directory '*'

# Copy the setup script
COPY --chown=root:root --chmod=700 ./setup-remote.sh /setup-remote.sh
