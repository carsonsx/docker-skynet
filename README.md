# Skynet Docker

## Usage

### Build your skynet image
```console
$ git clone https://github.com/carsonsx/docker-skynet
$ cd docker-skynet
$ ./build.sh xxx/skynet
$ docker run -itd --name skynet -p 8888:8888 xxx/skynet
```

### Run directly
```console
$ docker run -itd --name skynet -p 8888:8888 carsonsx/skynet
```