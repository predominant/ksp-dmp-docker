FROM ubuntu:18.04

ENV version=0.3.2.0
ENV file=v$version.tar.gz

RUN \
	apt-get update && \
	apt install -y gnupg ca-certificates wget unzip && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list && \
	apt update && \
	apt install -y mono-devel 

WORKDIR /tmp
RUN \
	wget https://d-mp.org/downloads/release/v$version/DMPServer.zip && \
	unzip DMPServer.zip && \
	cp -vr DMPServer /opt/dmp
	
VOLUME /opt/dmp/Universe
VOLUME /opt/dmp/Config

CMD ["mono", "/opt/dmp/DMPServer.exe"]