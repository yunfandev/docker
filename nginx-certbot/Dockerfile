FROM nginx:latest

LABEL maintainer="YunFan <dev@yunfan.me>"

RUN apt-get update \
    && apt-get install certbot python-certbot-nginx apache2-utils nano -y \
    && rm -rf /var/lib/apt/lists/*
