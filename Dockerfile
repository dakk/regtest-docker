FROM ubuntu:18.04
MAINTAINER Davide Gessa

RUN apt update && apt upgrade
RUN apt install -y \
   curl \
   wget \
   git \
   wget \
   tar \
   python \
   build-essential \
   libzmq3-dev \
   libsnappy-dev
RUN wget https://bitcoincore.org/bin/bitcoin-core-0.19.1/bitcoin-0.19.1-x86_64-linux-gnu.tar.gz && \
   tar -xf bitcoin-0.19.1-x86_64-linux-gnu.tar.gz

WORKDIR /root

COPY start_bitcoind.sh ./

RUN chmod +x start_bitcoind.sh

ENTRYPOINT ["/root/start_bitcoind.sh"]

EXPOSE 18443