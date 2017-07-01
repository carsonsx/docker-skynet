# Skynet Docker

## Usage

### Build your skynet image
```console
$ git clone https://github.com/carsonsx/docker-skynet
$ cd docker-skynet
$ chmod o+x build.sh
$ ./build.sh xxx/skynet
$ docker run -itd --name skynet -p 8888:8888 xxx/skynet
```

### Run directly
```console
$ docker run -itd --name skynet -p 8888:8888 carsonsx/skynet
```

## How Build
1. build skynet with gcc image
2. create image from debian