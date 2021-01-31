FROM mcr.microsoft.com/windows/servercore:1809
USER ContainerAdministrator
WORKDIR 'C:\Users\ContainerAdministrator'
ADD https://aka.ms/vs/16/release/vc_redist.x64.exe C:/Users/ContainerAdministrator/vc_redist.x64.exe
RUN vc_redist.x64.exe /quiet /norestart
RUN DEL vc_redist.x64.exe