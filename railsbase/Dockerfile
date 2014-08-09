FROM ubuntu:saucy
MAINTAINER Richard Kent Jordan <rjordan@pobox.com>

RUN apt-get update;\
    apt-get install python-software-properties -y;\
    apt-get add-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe";\
    apt-get update;\
    apt-get install build-essential openssl \
    git-core libmysqlclient-dev libpq-dev autoconf \
    gawk libreadline6-dev libyaml-dev libsqlite3-dev \
    libgdbm-dev libncurses5-dev automake libtool nodejs\
    bison pkg-config curl libxslt-dev libxml2-dev ruby2.0 ruby2.0-dev nginx-full supervisor -y;\
    echo "---\n:benchmark: false\n:bulk_threshold: 1000\n:backtrace: false\n:verbose: true\ngem: --no-ri --no-rdoc" > ~/.gemrc;\
    apt-get clean -y;\
    apt-get autoremove -y;\
    gem update --system; gem install bundler
RUN rm /etc/nginx/sites-enabled/*
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD nginx.config /etc/nginx/sites-enabled/default
ENV RAILS_ENV production
EXPOSE 80


