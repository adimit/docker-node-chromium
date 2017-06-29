FROM node:8-alpine
MAINTAINER Aleksandar Dimitrov <aleks.dimitrov@gmail.com>

RUN apk add --update chromium udev ttf-freefont

USER node

#ENTRYPOINT ["chromium-browser", "--headless", "--disable-gpu"]
