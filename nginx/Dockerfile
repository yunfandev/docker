FROM alpine:latest

LABEL maintainer="YunFan <dev@yunfan.me>"

RUN apk add nginx nginx-mod-http-headers-more apache2-utils nano \
    && mkdir -p /var/run/ \
    && rm -rf /var/cache/apk/*

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/proxy.conf /etc/nginx/proxy.conf

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
