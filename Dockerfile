FROM ruby:2.4-alpine3.6

LABEL maintainer="Samuel Menigat <samuel.menigat@gmail.com>"

RUN set -xe \
    && apk add --no-cache \
        libstdc++ \
        sqlite-libs \
    && apk add --no-cache --virtual .build-deps \
        build-base \
        sqlite-dev \
    && gem install mailcatcher -v 0.6.5 --no-ri --no-rdoc \
    && apk del .build-deps

# smtp port
EXPOSE 1025

# webserver port
EXPOSE 1080

CMD mailcatcher --foreground --no-quit --ip=0.0.0.0
