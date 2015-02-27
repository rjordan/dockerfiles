#!/bin/bash
docker rm jenkins
#docker run -u root -t -i -p 8080:8080 --name jenkins -v /home/rjordan2/docker_data/jenkins:/var/jenkins_home rvm_jenkins:latest /bin/bash
docker run -d -p 8080:8080 --name jenkins -v ~/docker-data/jenkins:/var/jenkins_home rvm_jenkins:latest

