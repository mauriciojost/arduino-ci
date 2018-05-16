FROM python:2.7

RUN pip install -U platformio==3.5.1

COPY sources.list /etc/apt/sources.list

ENV HOME /root/

RUN chmod 777 /root/
 
#RUN apt-get update; exit 0
 
#RUN apt-get install -y ...



 
