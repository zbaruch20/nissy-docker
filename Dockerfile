FROM alpine/curl:latest

RUN curl -o nissy.tar.gz https://nissy.tronto.net/nissy-2.0.8.tar.gz
RUN tar -xzvf nissy.tar.gz
WORKDIR nissy-2.0.8

RUN apk add --upgrade gcc libc-dev bmake
RUN bmake && bmake install
RUN nissy gen

ENTRYPOINT "/nissy-2.0.8/nissy"
