FROM alpine:3.22.2

# Crete the user and group 1000:1000 for the files that could be created
RUN addgroup -g 1000 user1 \
    && adduser -S -D -H -u 1000 -G user1 user1 \
    && addgroup -g 1001 user2 \
    && adduser -S -D -H -u 1001 -G user2 user2

RUN apk add --no-cache restic openssh

COPY ./entrypoint.sh /entrypoint.sh

USER 1000:1000

ENTRYPOINT ["/entrypoint.sh"]
