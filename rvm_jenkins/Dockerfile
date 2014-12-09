FROM jenkins:latest

USER root
#ENV http_proxy=
#ENV https_proxy=
#RUN echo "Acquire::http { Proxy "http://127.0.0.1:80"; };" >> /etc/apt/apt.conf.d/01proxy
RUN usermod jenkins -G sudo
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    curl bison build-essential zlib1g-dev libssl-dev libreadline6-dev libxml2-dev git-core \
    gawk libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev \
    automake libtool pkg-config libffi-dev 
USER jenkins
ENV HOME /var/jenkins_home
