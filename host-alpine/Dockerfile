FROM alpine:3.7
RUN apk --no-cache update \
 && apk upgrade \
 && apk --no-cache add iproute2 iperf tcpdump curl apache2-utils ettercap\
 && apk add hping3 --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump
