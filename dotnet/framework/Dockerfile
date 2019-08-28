FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

LABEL maintainer="YunFan <dev@yunfan.me>"

WORKDIR 'C:\Users\ContainerUser'
RUN curl.exe https://download.visualstudio.microsoft.com/download/pr/c8edbb87-c7ec-4500-a461-71e8912d25e9/99ba493d660597490cbb8b3211d2cae4/vc_redist.x86.exe --output vc_redist.x86.exe
RUN vc_redist.x86.exe /quiet /norestart
RUN DEL vc_redist.x86.exe
ENTRYPOINT [ "powershell.exe" ]