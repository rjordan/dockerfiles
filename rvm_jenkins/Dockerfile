FROM jenkins:latest

USER root
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    curl bison build-essential zlib1g-dev libssl-dev libreadline6-dev libxml2-dev git-core

USER jenkins
ENV HOME /var/jenkins_home
