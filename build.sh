#!/usr/bin/env bash
set -x
#set -e
set -o pipefail

SFILE=skynet.sh

cat >$SFILE <<EOL
git clone https://github.com/cloudwu/skynet.git
cd skynet
make linux
EOL

chmod a+x $SFILE

docker run --name gcc-skynet -itd gcc
docker cp $SFILE gcc-skynet:/$SFILE
docker exec -it gcc-skynet sh $SFILE
docker cp gcc-skynet:/skynet ./

docker rm -f skynet
docker rmi $1
docker rmi -f $(docker images -f "dangling=true" -q)
docker build -t $1 .

# clean
docker rm -f gcc-skynet
rm -rf skynet
rm -f $SFILE