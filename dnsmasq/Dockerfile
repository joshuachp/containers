FROM alpine:3.22.0

RUN apk add --no-cache dnsmasq-dnssec

COPY ./entrypoint.sh /entrypoint.sh

USER 100:101

EXPOSE 53 53/udp

ENTRYPOINT ["/entrypoint.sh"]
