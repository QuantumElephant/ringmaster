#!/bin/bash
for i in $(find $(pwd) -name Dockerfile)
do
	echo "looking at $i"
	./add_secrets.py $i
done

