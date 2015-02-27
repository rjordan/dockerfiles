FROM ubuntu:latest
MAINTAINER Richard Kent Jordan <rjordan@pobox.com>

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get -yq install git curl 

RUN curl -sL https://deb.nodesource.com/setup | sudo bash 

RUN apt-get -yq install nodejs 
RUN git clone https://github.com/mulesoft/api-designer.git
WORKDIR /api-designer 
RUN sed -i 's/localhost/0.0.0.0/g' Gruntfile.js
EXPOSE 9013

RUN npm install -g grunt-cli \
    && npm install -g bower \
    && npm install \
    && bower install --allow-root
    
CMD /usr/bin/grunt server -f

