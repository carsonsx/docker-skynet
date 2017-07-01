#!/usr/bin/env bash
set -x
#set -e
set -o pipefail

#
# This script is meant for quick & easy build and push hfs image via:
#   'curl -sSL https://raw.githubusercontent.com/carsonsx/docker-skynet/master/build.sh | sh'
# or:
#   'wget -qO- https://raw.githubusercontent.com/carsonsx/docker-skynet/master/build.sh | sh'
#

# Download Dockerfile
rm -f Dockerfile
curl -sSLO "https://raw.githubusercontent.com/carsonsx/docker-skynet/master/Dockerfile"

# Stop and remove image if exists
docker rm -f carsonsx/skynet

# Remove image if exists
docker rmi carsonsx/skynet

# Build image
docker build -t carsonsx/skynet .
