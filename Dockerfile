FROM ubuntu:18.04
MAINTAINER Davide Gessa

RUN apt update -y && apt upgrade -y
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
   tar -xzf bitcoin-0.19.1-x86_64-linux-gnu.tar.gz  -C /opt

# WORKDIR /root
COPY start_bitcoind.sh /
EXPOSE 18443

RUN chmod +x /start_bitcoind.sh

# ENTRYPOINT ["/start_bitcoind.sh"]
CMD "/bin/bash /start_bitcoind.sh"
