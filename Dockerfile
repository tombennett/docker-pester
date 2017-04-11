FROM rocklobster/docker-chocolatey

LABEL maintainer="tom@thingamajig.net"
LABEL description="Windows Server Core with Chocolatey"

ENV pester_version=3.4.6

RUN powershell -command 'choco install pester --version ${pester_version} --force'
	
ENTRYPOINT ["C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"]	