FROM mono
RUN apt-get update || : && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*
RUN curl https://dist.nuget.org/win-x86-commandline/latest/nuget.exe -o /usr/bin/nuget.exe && \
    alias nuget="mono /usr/bin/nuget.exe"
RUN nuget