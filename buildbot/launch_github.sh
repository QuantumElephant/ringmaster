#!/bin/sh
#!/bin/bash

source GITHUB_SECRET.sh &> /dev/null

if test -z $GITHUB_SECRET
then
    echo "The github secret must be specified in ./GITHUB_SECRET.sh!"
    exit 1
fi

./github_buildbot.py -p 8000 --secret=$GITHUB_SECRET --auth=github:github.horton
