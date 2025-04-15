#!/bin/bash

echo 
docker build -t lab1_docker_api .

echo 
docker rm -f lab1_api_container 2>/dev/null

echo 
docker run -d -p 5000:5000 --name lab1_api_container lab1_docker_api

echo
