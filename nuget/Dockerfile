FROM mono
RUN apt-get update || : && \
    apt-get install -y git wget && \
    wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y powershell && \
    rm -rf /var/lib/apt/lists/*
RUN curl https://dist.nuget.org/win-x86-commandline/latest/nuget.exe -o /usr/bin/nuget.exe && \
    alias nuget="mono /usr/bin/nuget.exe"
RUN nuget