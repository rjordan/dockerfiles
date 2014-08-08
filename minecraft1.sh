#!/bin/bash
docker rm minecraft1
docker run -d --name minecraft1 -v /srv/minecraft/world1:/minecraft -p 25565:25565 rjordan/minecraft 
#docker run --name minecraft1 -d -v /srv/minecraft/world1:/minecraft -p 25565:25565  -p 8123:8123 rjordan/bukkit
