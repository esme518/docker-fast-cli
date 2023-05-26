#
# Dockerfile for fast-cli
#

FROM alpine

ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN set -ex \
  && apk add --update --no-cache \
      chromium \
      nodejs \
      npm \
  && npm install --global fast-cli \
  && rm -rf /tmp/* /var/cache/apk/* /root/.npm/*

CMD ["fast","-u"]
