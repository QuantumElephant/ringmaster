#!/bin/bash

for i in find `pwd` -name Dockerfile
do
	./add_secrets.py $i
done
