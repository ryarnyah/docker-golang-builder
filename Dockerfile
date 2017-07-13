FROM golang:1.8.3

RUN apt-get update && \
    apt-get install -y upx

ADD docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
