FROM ubuntu:18.04
MAINTAINER Davide Gessa

RUN apt update && apt install -y software-properties-common

RUN add-apt-repository -y ppa:bitcoin/bitcoin && \
   apt update && \
   apt install -y \
   curl \
   git \
   wget \
   tar \
   python \
   build-essential \
   libzmq3-dev \
   libsnappy-dev && \
   apt install -y \
   bitcoind 


WORKDIR /root

COPY start_bitcoind.sh ./

RUN chmod +x start_bitcoind.sh

ENTRYPOINT ["/root/start_bitcoind.sh"]

EXPOSE 18443