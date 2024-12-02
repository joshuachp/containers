FROM alpine:3.20.3

RUN apk add --no-cache dnsmasq

COPY ./entrypoint.sh /entrypoint.sh

USER 100:101

ENTRYPOINT ["/entrypoint.sh"]
