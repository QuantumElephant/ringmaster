#!/bin/bash
docker stop bbm && docker rm bbm && docker run --volumes-from=furious_thompson -p 8010:8010 -p 9989:9989 --name bbm -d -it buildbot_master
