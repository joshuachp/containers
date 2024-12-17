FROM alpine:3.21.0

RUN apk add --no-cache dnsmasq

COPY ./entrypoint.sh /entrypoint.sh

USER 100:101

ENTRYPOINT ["/entrypoint.sh"]
