FROM ubuntu:bionic
RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        cabextract \
        gosu \
        gpg-agent \
        p7zip \
        pulseaudio-utils \
        software-properties-common \
        unzip \
        wget \
        winbind \
        zenity \
    && rm -rf /var/lib/apt/lists/*
ARG WINEBRANCH="stable"
ARG WINE_VER="4.0.3~bionic"
RUN wget https://dl.winehq.org/wine-builds/winehq.key \
    && apt-key add winehq.key \
    && apt-add-repository "deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main" \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --install-recommends winehq-${WINEBRANCH}="${WINE_VER}" \
    && rm -rf /var/lib/apt/lists/* \
    && rm winehq.key
# Download mono and gecko
ARG MONO_VER="4.9.4"
ARG GECKO_VER="2.47"
RUN wget https://dl.winehq.org/wine/wine-mono/${MONO_VER}/wine-mono-${MONO_VER}.msi \
    && wget https://dl.winehq.org/wine/wine-gecko/${GECKO_VER}/wine_gecko-${GECKO_VER}-x86.msi \
    && wget https://dl.winehq.org/wine/wine-gecko/${GECKO_VER}/wine_gecko-${GECKO_VER}-x86_64.msi \
    && wine64 msiexec /i wine-mono-${MONO_VER}.msi \
    && wine64 msiexec /i wine_gecko-${GECKO_VER}-x86_64.msi \
    && wine msiexec /i wine_gecko-${GECKO_VER}-x86.msi \
    && rm -f wine-mono-${MONO_VER}.msi wine_gecko-${GECKO_VER}-x86.msi wine_gecko-${GECKO_VER}-x86_64.msi
# Download winetricks
RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks \
        -O /usr/bin/winetricks \
    && chmod +rx /usr/bin/winetricks
CMD ["/bin/bash"]