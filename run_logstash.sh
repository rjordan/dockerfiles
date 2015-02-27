#!/bin/bash
docker rm logstash
docker run -p 5200:5200/udp --link elasticsearch:elasticsearch --name logstash logstash
