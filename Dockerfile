FROM ubuntu
MAINTAINER Savchenko D
VOLUME /home/docker/
WORKDIR /home/docker/
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install j2cli
RUN pip3 install j2cli[yaml] 
