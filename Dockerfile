FROM node:12.14.1-alpine3.11

RUN \
  apk --update add iptables bash

COPY start /start

ENV WHITELIST_NAME=registry.npmjs.org
ENV WHITELIST_PORT=443

CMD /start
