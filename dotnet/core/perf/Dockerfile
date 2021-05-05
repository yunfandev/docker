FROM mcr.microsoft.com/dotnet/sdk:5.0

LABEL maintainer="YunFan <dev@yunfan.me>"

RUN dotnet tool install -g dotnet-trace
RUN dotnet tool install -g dotnet-dump
RUN dotnet tool install -g dotnet-counters

# https://devblogs.microsoft.com/dotnet/collecting-and-analyzing-memory-dumps/
RUN dotnet tool install -g dotnet-gcdump
ENV ASPNETCORE_URLS=http://+:80
ENV DOTNET_RUNNING_IN_CONTAINER=true
ENV TZ=Asia/Shanghai
ENV ASPNETCORE_FORWARDEDHEADERS_ENABLED=true
ENV PATH="$PATH:/root/.dotnet/tools"

RUN apt update || : && apt install -y htop nano iputils-ping tar libgdiplus libc6-dev cabextract linux-perf curl \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*

# add grpcurl
RUN curl -L "https://github.com/fullstorydev/grpcurl/releases/download/v1.8.1/grpcurl_1.8.1_linux_x86_64.tar.gz" -o grpcurl.tag.gz \
    && tar -xzvf grpcurl.tag.gz -C /usr/local/bin \
    && rm grpcurl.tag.gz /usr/local/bin/LICENSE

# add paping
RUN curl -L https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/paping/paping_1.5.5_x86-64_linux.tar.gz -o paping_1.5.5_x86-64_linux.tar.gz \
    && tar zxvf paping_1.5.5_x86-64_linux.tar.gz -C /usr/local/bin \
    && rm paping_1.5.5_x86-64_linux.tar.gz

# install fonts
RUN curl -L https://www.freedesktop.org/software/fontconfig/webfonts/webfonts.tar.gz -o webfonts.tar.gz \
    && tar -xzf webfonts.tar.gz \
    && cabextract msfonts/*.exe -d msfonts \
    && mkdir -p /usr/local/share/fonts \
    && mv msfonts/*.ttf msfonts/*.TTF /usr/local/share/fonts \
    && rm -rf msfonts webfonts.tar.gz