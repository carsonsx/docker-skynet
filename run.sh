#!/usr/bin/env bash
set -x
#set -e
set -o pipefail

#
# This script is meant for quick & easy run latest image via:
#   'curl -sSL https://raw.githubusercontent.com/carsonsx/docker-skynet/master/run.sh | sh'
# or:
#   'wget -qO- https://raw.githubusercontent.com/carsonsx/docker-skynet/master/run.sh | sh'
#

# Download Dockerfile
rm -f Dockerfile
curl -sSLO "https://raw.githubusercontent.com/carsonsx/docker-skynet/master/Dockerfile"

# Stop and remove image if exists
docker rm -f carsonsx/skynet

# Remove image if exists
docker rmi carsonsx/skynet

# Remove none image
docker rmi -f $(docker images -f "dangling=true" -q)

set -e

# Build image
docker build -t carsonsx/skynet .

# Run
docker run -itd --name skynet --restart=always -p 8888:8888 carsonsx/skynet examples/config
docker logs -f skynet