cp deploy/docker/Dockerfile .
docker buildx build . --output type=docker,name=elestio4test/openblocks-ce:latest | docker load