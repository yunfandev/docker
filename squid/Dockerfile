FROM alpine

LABEL maintainer="YunFan <dev@yunfan.me>"

VOLUME [ "/etc/pam.d", "/var/log/squid" ]

RUN apk add -U squid \
    && mkdir -p /var/log/squid \
    && rm -rf /var/cache/apk/*

COPY files/squid.conf /etc/squid/squid.conf

EXPOSE 3128

STOPSIGNAL SIGTERM

CMD [ "squid", "-N" ]
