FROM ubuntu:saucy
MAINTAINER Richard Jordan <richard.jordan@pobox.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    openjdk-7-jre-headless

ADD logstash-1.4.2.tar.gz /
WORKDIR logstash-1.4.2
ADD logger.conf logstash-1.4.2/logger.conf
ADD lumberjack.key logstash-1.4.2/lumberjack.key
ADD lumberjack.crt logstash-1.4.2/lumberjack.crt
EXPOSE 5000
EXPOSE 5544
EXPOSE 5228/udp

CMD bin/logstash -f logger.conf

