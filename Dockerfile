FROM golang:alpine

RUN apk --update add git && rm -rf /var/cache/apk/*
COPY run /root/run

ENTRYPOINT ["/root/run"]
