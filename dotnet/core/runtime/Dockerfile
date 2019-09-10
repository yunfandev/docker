FROM mcr.microsoft.com/dotnet/core/runtime:2.2-stretch-slim

LABEL maintainer="YunFan <dev@yunfan.me>"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y htop nano iputils-ping \
    && rm -rf /var/lib/apt/lists/*