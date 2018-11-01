FROM alpine:3.7
RUN apk --no-cache update \
 && apk upgrade \
 && apk --no-cache add iproute2 iperf tcpdump curl apache2-utils python2 py-pip
COPY exabgp.conf /etc/.
COPY requirements.txt /.
RUN pip install --no-cache-dir -r requirements.txt 
RUN exabgp --fi > exabgp.env
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump
