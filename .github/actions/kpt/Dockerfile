FROM gcr.io/kpt-dev/kpt:v0.29.0

RUN apk add --update docker openrc
RUN rc-update add docker boot

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
