FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

LABEL maintainer="YunFan <dev@yunfan.me>"

ENV TZ=Asia/Shanghai
# https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/proxy-load-balancer?view=aspnetcore-3.0#forward-the-scheme-for-linux-and-non-iis-reverse-proxies
ENV ASPNETCORE_FORWARDEDHEADERS_ENABLED=True
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y htop nano iputils-ping \
    && rm -rf /var/lib/apt/lists/*