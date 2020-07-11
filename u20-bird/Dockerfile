FROM ubuntu:focal
RUN apt update && apt install -y iproute2  net-tools inetutils-ping  bird
COPY bird.conf /etc/bird.conf
COPY rp_disable.sh /rp_disable.sh
RUN mkdir /run/bird
RUN ./rp_disable.sh


