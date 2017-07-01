# Supported tags and respective `Dockerfile` links
*   [`1.0.0`, `latest` (_Dockerfile_)](https://raw.githubusercontent.com/carsonsx/docker-skynet/master/Dockerfile)

# How to use this image
    $ docker run -d carsonsx/skynet

    $ docker run -d -p 8888:8888 carsonsx/skynet

    $ docker run -d -v "$(pwd)"/config-dir:/skynet/config-dir carsonsx/skynet config-dir/config