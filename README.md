# containers

Docker containers

## Build container

```sh
# Create a builder that supports building in Qemu
docker buildx create --name=container --driver=docker-container --use --bootstrap
docker buildx build \
  --builder=container \
  --platform=linux/amd64,linux/arm64 \
  -t <USER>/<REPO>:<TAG> \
  --push <PATH>
```
