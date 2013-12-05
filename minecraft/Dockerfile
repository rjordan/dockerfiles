FROM ubuntu
MAINTAINER Richard Kent Jordan <rjordan@pobox.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y rubygems openjdk-7-jre-headless openjdk-7-jre-lib

EXPOSE 25565

VOLUME /minecraft
WORKDIR /minecraft

CMD ["java","-Xmx1024M","-Xms768M","-jar","minecraft.jar","nogui"]
