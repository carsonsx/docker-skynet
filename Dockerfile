FROM gcc

MAINTAINER carsonsx <carsonsx@qq.com>

RUN git clone https://github.com/cloudwu/skynet.git

RUN cd skynet

RUN make linux

ENTRYPOINT ["/skynet/skynet"]

EXPOSE 8888
