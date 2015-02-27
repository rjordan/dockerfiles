#!/bin/bash
docker run --rm --name ddata --privileged -e NFS_PORT_2049_TCP_ADDR=192.168.0.100 -v /data cpuguy83/nfs-client /srv2:/data

