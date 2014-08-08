#!/bin/bash
docker rm rabbitmq
docker run --name rabbitmq -d -p 5672:5672 -p 15672:15672 bradrydzewski/rabbitmq:3.2
