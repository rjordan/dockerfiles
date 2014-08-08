#!/bin/bash
docker rm mumble
docker run -d --name mumble -p 64738:64738 -p 64738:64738/udp -p 2222:22 dcshock/docker-mumble-server

