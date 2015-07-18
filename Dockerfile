FROM library/ubuntu:14.04
MAINTAINER Kevin Rojczyk <kevin.roj@p8h.de>

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:kurento/kurento
RUN apt-get install -y kurento-media-server curl

RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y git nodejs
RUN npm install -g bower && git clone https://github.com/lulop-k/kurento-rtsp2webrtc.git && cd kurento-rtsp2webrtc && bower install

