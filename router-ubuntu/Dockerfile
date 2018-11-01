FROM ubuntu:trusty
COPY files/bird.conf /etc/bird.conf
COPY files/cz_nic-labs-ubuntu-bird-trusty.list  /etc/apt/sources.list.d/.
COPY files /tmp/files
RUN /tmp/files/build && rm -rf /tmp/files
RUN mv /usr/sbin/tcpdump /usr/bin/.
