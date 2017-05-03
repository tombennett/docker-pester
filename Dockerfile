FROM rocklobster/chocolatey:0.10.5

LABEL maintainer="tom@thingamajig.net"
LABEL description="Windows Server Core with Pester

RUN powershell -command 'choco install pester --version 3.4.6 --force'
	
ENTRYPOINT ["C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"]	
