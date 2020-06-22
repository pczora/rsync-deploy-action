FROM alpine:3.12.0
RUN apk add rsync openssh-client
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
