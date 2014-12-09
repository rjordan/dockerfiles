FROM ubuntu:saucy
MAINTAINER Richard Jordan <richard.jordan@pobox.com>
#ENV http_proxy 
#ENV https_proxy 

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    openjdk-7-jre-headless

ADD elasticsearch-1.4.0.tar.gz /
WORKDIR /elasticsearch-1.4.0 
ADD elasticsearch.yml elasticsearch-1.4.0/config/elasticsearch.yml
RUN bin/plugin -DproxyHost= -DproxyPort= -v -i mobz/elasticsearch-head 
VOLUME /esdata

EXPOSE 9200
EXPOSE 9300

CMD bin/elasticsearch

