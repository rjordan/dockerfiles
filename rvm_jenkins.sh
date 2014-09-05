#!/bin/bash
docker rm jenkins
docker run -d -p 8080:8080 --name jenkins -v /home/rjordan2/docker_data/jenkins:/var/jenkins_home rvm_jenkins:latest

