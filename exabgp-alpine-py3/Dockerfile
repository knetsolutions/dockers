FROM jfloff/alpine-python:2.7

WORKDIR /

COPY exabgp.conf /etc/.
COPY requirements.txt /.
COPY server.py /.

RUN pip install --no-cache-dir -r requirements.txt 
RUN exabgp --fi > exabgp.env

RUN sed -i 's?/usr/bin/python3?'`which python`'?' server.py
