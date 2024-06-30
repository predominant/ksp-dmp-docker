FROM mono

RUN \
	apt-get update && \
	apt install -y wget unzip && \
	apt-get clean
WORKDIR /tmp

ENV version=0.3.8.3
ENV file=v$version.tar.gz

RUN \
	wget https://d-mp.org/builds/release/v$version/DMPServer.zip && \
	unzip DMPServer.zip && \
	mv DMPServer /opt/dmp && \
	rm DMPServer.zip
	
VOLUME /opt/dmp/Universe
VOLUME /opt/dmp/Config

CMD ["mono", "/opt/dmp/DMPServer.exe"]
