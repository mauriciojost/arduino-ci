#Download base image ubuntu 16.04
FROM sglahn/docker-platformio-core:latest

COPY sources.list /etc/apt/sources.list
 
RUN apt-get update; exit 0
 
# Java
RUN apt-get install -y openjdk-8-jdk 



 
