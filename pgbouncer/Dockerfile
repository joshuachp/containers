FROM alpine:3.22.1

# We need the postgres group to exist
RUN set -eux; \
    apk add --no-cache postgresql17-client && \
    apk add --no-cache pgbouncer && su pgbouncer -s /bin/sh -c id && \
    mkdir -p /etc/pgbouncer /etc/pgbouncer/config.d && \
    touch /etc/pgbouncer/config.d/main.ini && \
    touch /etc/pgbouncer/config.d/private.ini && \
    touch /etc/pgbouncer/userlist.txt

COPY config.ini /etc/pgbouncer/config.ini

COPY ./entrypoint.sh /entrypoint.sh

USER pgbouncer:postgres

ENTRYPOINT ["/entrypoint.sh"]
