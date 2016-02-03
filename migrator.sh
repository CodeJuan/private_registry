#!/bin/bash

docker run -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e V1_REGISTRY=docker.io \
  -e V2_REGISTRY=127.0.0.1:32768 \
  -e V1_NO_LOGIN=true \
  -e V1_REPO_FILTER=redis \
  -e V2_USERNAME=user \
  -e V2_PASSWORD=1234 \
  docker/migrator
