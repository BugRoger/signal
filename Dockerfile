FROM alpine:latest

ADD bin/signal /usr/local/bin/signal

ENTRYPOINT [ "/usr/local/bin/signal" ]