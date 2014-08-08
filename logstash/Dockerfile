FROM ubuntu:saucy
MAINTAINER Richard Jordan <richard.jordan@pobox.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    openjdk-7-jre-headless

ADD logstash-1.4.2.tar.gz /
ADD logger.conf logstash-1.4.2/logger.conf
WORKDIR logstash-1.4.2
EXPOSE 5200

CMD bin/logstash -f logger.conf

