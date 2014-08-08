#!/bin/bash
docker rm logstash
docker run -p 5200:5200/udp --name logstash logstash
