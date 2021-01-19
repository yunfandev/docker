FROM debian:buster
RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-transport-https \
        gnupg2 \
        software-properties-common \
        wget \
    && rm -rf /var/lib/apt/lists/*
ARG WINEBRANCH="stable"
# https://forum.winehq.org/viewtopic.php?f=8&t=32192
# https://www.linuxuprising.com/2019/09/how-to-install-wine-staging-development.html
RUN wget https://dl.winehq.org/wine-builds/winehq.key \
    && apt-key add winehq.key \
    && apt-add-repository "deb https://dl.winehq.org/wine-builds/debian/ buster main" \
    && dpkg --add-architecture i386 \
    && wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | apt-key add - \
    && echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./" | tee /etc/apt/sources.list.d/wine-obs.list \
    && apt-get update \
    && apt-get install -y --install-recommends -f winehq-${WINEBRANCH} \
    && rm -rf /var/lib/apt/lists/* \
    && rm winehq.key
# Download mono and gecko
ARG MONO_VER="5.1.1"
ARG GECKO_VER="2.47.2"
RUN wget https://dl.winehq.org/wine/wine-mono/${MONO_VER}/wine-mono-${MONO_VER}-x86.msi \
    && wget https://dl.winehq.org/wine/wine-gecko/${GECKO_VER}/wine-gecko-${GECKO_VER}-x86.msi \
    && wget https://dl.winehq.org/wine/wine-gecko/${GECKO_VER}/wine-gecko-${GECKO_VER}-x86_64.msi \
    && wine64 msiexec /i wine-mono-${MONO_VER}-x86.msi \
    && wine64 msiexec /i wine-gecko-${GECKO_VER}-x86_64.msi \
    && wine msiexec /i wine-gecko-${GECKO_VER}-x86.msi \
    && rm -f wine-mono-${MONO_VER}-x86.msi wine-gecko-${GECKO_VER}-x86.msi wine-gecko-${GECKO_VER}-x86_64.msi
# Download winetricks
RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks \
        -O /usr/bin/winetricks \
    && chmod +rx /usr/bin/winetricks
CMD ["/bin/bash"]