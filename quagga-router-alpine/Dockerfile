FROM alpine:3.7
RUN apk --no-cache update \
 && apk upgrade \
 && apk --no-cache add iproute2 iperf tcpdump curl apache2-utils quagga\
 && apk add bird=2.0.2-r1 --no-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing
COPY bird.conf /etc/bird.conf
COPY rp_disable.sh /rp_disable.sh
RUN mkdir /run/bird
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump
RUN ./rp_disable.sh

