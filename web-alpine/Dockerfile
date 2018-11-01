FROM alpine:3.7
RUN apk --no-cache update \
 && apk upgrade \
 && apk --no-cache add iproute2 iperf tcpdump curl apache2 && mkdir /run/apache2
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump
RUN echo "127.0.0.1 localhost" >> /etc/hosts
CMD ["httpd", "-X"]