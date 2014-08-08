#!/bin/bash
docker rm minecraft2
docker run --name minecraft2 -d -v /srv/minecraft/world2:/minecraft -p 25566:25565 -p 8124:8123 rjordan/bukkit


