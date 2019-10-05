FROM debian:9

LABEL maintainer="YunFan <dev@yunfan.me>"

RUN apt update && apt-get install wget gnupg2 libssl1.0-dev apt-transport-https -y \
    && wget -qO- https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && echo "deb [arch=amd64] https://packages.microsoft.com/debian/9/prod stretch main" | tee /etc/apt/sources.list.d/mssql-cli.list \
    && apt-get update \
    && apt-get install mssql-cli -y \
    && rm -rf /var/lib/apt/lists/*