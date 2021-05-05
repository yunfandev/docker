FROM mcr.microsoft.com/dotnet/runtime:5.0

LABEL maintainer="YunFan <dev@yunfan.me>"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update || : && apt install -y curl htop nano iputils-ping tar libgdiplus libc6-dev cabextract \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*

# Add paping
RUN curl -L https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/paping/paping_1.5.5_x86-64_linux.tar.gz -o paping_1.5.5_x86-64_linux.tar.gz \
    && tar zxvf paping_1.5.5_x86-64_linux.tar.gz -C /usr/local/bin \
    && rm paping_1.5.5_x86-64_linux.tar.gz

# Add grpcurl
RUN curl -L "https://github.com/fullstorydev/grpcurl/releases/download/v1.8.1/grpcurl_1.8.1_linux_x86_64.tar.gz" -o grpcurl.tag.gz
RUN tar -xzvf grpcurl.tag.gz -C /usr/local/bin
RUN rm grpcurl.tag.gz /usr/local/bin/LICENSE

# Install fonts https://askubuntu.com/questions/651441/how-to-install-arial-font-and-other-windows-fonts-in-ubuntu
RUN curl -L https://www.freedesktop.org/software/fontconfig/webfonts/webfonts.tar.gz -o webfonts.tar.gz \
    && tar -xzf webfonts.tar.gz \
    && cabextract msfonts/*.exe -d msfonts \
    && mkdir -p /usr/local/share/fonts \
    && mv msfonts/*.ttf msfonts/*.TTF /usr/local/share/fonts \
    && rm -rf msfonts webfonts.tar.gz