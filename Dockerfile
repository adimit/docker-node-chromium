FROM node:8
MAINTAINER Aleksandar Dimitrov <a.dimitrov@seidemann-web.com>

RUN apt-get update \
 && apt-get install -y chromium ttf-freefont \
 && rm -rf /var/lib/apt/lists/*

USER node

CMD ["node"]
