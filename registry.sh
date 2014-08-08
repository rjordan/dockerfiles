#!/bin/bash
docker rm registry
docker run -d --name registry -p 5000:5000 samalba/docker-registry

