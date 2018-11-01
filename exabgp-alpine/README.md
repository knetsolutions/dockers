# Router


Docker build

how to build:
-------------
sudo make build

To push the image in docker hub:
-----------------------
sudo make push

To Test the application 
------------------------

To be updated


How to start the docker:
sudo docker run -it --cap-add=NET_ADMIN --cap-add=NET_RAW  --cap-add=SYS_ADMIN --name router1 knet/exabgp sh

To start exabgp in the docker shell

env exabgp.log.all=true exabgp.log.level=DEBUG exabgp.log.destination=/var/log/exabgp.log exabgp.log.routes=true exabgp.daemon.user=root /usr/bin/exabgp /etc/exabgp.conf &



Reference:
https://github.com/slowr/ExaBGP-Monitor/blob/master/Dockerfile