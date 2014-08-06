FROM ubuntu
MAINTAINER Richard Jordan <richard.jordan@pobox.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    openjdk-7-jre-headless

#Minecraft
EXPOSE 25565 
#Dynmap
EXPOSE 8123  

VOLUME /minecraft
WORKDIR /minecraft
CMD ./minecraft.sh
