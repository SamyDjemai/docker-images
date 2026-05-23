FROM docker:29-cli

COPY ./docker-prune.sh /etc/periodic/daily/docker-prune

RUN apk update && \
  apk upgrade && \
  apk add --no-cache curl && \
  chmod a+x /etc/periodic/daily/*
