FROM node:20.5.0-alpine

WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@3.0.0 --debug \
    && apk update \
    && apk add git \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

