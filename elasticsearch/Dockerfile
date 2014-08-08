FROM ubuntu:saucy
MAINTAINER Richard Jordan <richard.jordan@pobox.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    openjdk-7-jre-headless

ADD elasticsearch-1.3.1.tar.gz /
ADD elasticsearch.yml elasticsearch-1.3.1/config/elasticsearch.yml
RUN elasticsearch-1.3.1/bin/plugin -install mobz/elasticsearch-head
VOLUME /esdata

EXPOSE 9200
EXPOSE 9300

WORKDIR /elasticsearch-1.3.1 
CMD bin/elasticsearch

