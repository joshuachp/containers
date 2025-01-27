FROM alpine:3.21.2

# We need the postgres group to exist
RUN apk add --no-cache postgresql17-client \
    && apk add --no-cache pgbouncer \
    && su pgbouncer -s /bin/sh -c id

RUN mkdir -p /etc/pgbouncer /etc/pgbouncer/config.d && touch /etc/pgbouncer/config.d/{main,private}.ini

COPY config.ini /etc/pgbouncer/config.ini

COPY ./entrypoint.sh /entrypoint.sh

USER pgbouncer:postgres

ENTRYPOINT ["/entrypoint.sh"]
