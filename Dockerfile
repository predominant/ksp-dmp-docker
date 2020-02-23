FROM mono

RUN \
	apt-get update && \
	apt install -y wget unzip && \
	apt-get clean
WORKDIR /tmp

ENV version=0.3.5.1
ENV file=v$version.tar.gz

RUN \
	wget https://d-mp.org/downloads/release/v$version/DMPServer.zip && \
	unzip DMPServer.zip && \
	mv DMPServer /opt/dmp && \
	rm DMPServer.zip
	
VOLUME /opt/dmp/Universe
VOLUME /opt/dmp/Config

CMD ["mono", "/opt/dmp/DMPServer.exe"]
