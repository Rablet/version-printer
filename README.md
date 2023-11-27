# version-printer

Exposes an endpoint which prints a version

## Build and push:

docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/rablet/version-printer:0.4 --push .
