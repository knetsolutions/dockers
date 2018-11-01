FROM alpine:3.7
RUN apk --no-cache update \
 && apk upgrade \
 && apk --no-cache add iproute2 iperf tcpdump curl apache2-utils python2 py-pip \
 && apk add bird=2.0.2-r0 --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing
COPY bird.conf /etc/bird.conf
RUN pip install requests
RUN mkdir /run/bird
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump
