FROM debian

MAINTAINER carsonsx <carsonsx@qq.com>

COPY skynet /skynet

WORKDIR /skynet

ENTRYPOINT ["/skynet/skynet"]
CMD ["examples/config"]

EXPOSE 8888 8000 2013 2526
