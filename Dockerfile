FROM alpine:3.6
ENV JOURNEY_VERSION 0.2.0

RUN set -x \  
  && apk add --no-cache --virtual .bootstrap-deps wget ca-certificates \
  && wget -O journey.zip https://github.com/kabukky/journey/releases/download/v${JOURNEY_VERSION}/journey-linux-amd64.zip \
  && apk del .bootstrap-deps \
  && unzip journey.zip -d /app \
  && rm journey.zip \
  && cp -r /app/content /app/content.orig

ADD entrypoint.sh /app/entrypoint.sh

WORKDIR /app
VOLUME /app/content
ENV PORT 8084
EXPOSE 8084

ENTRYPOINT ["/app/entrypoint.sh"]
