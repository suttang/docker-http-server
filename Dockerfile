FROM node:8.7.0

ENV DOCROOT=/docroot
ENV PORT=8000

RUN apt-get update \
    && npm install -g http-server

CMD http-server $DOCROOT -p $PORT
