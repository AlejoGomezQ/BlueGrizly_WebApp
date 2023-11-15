#!/bin/bash

apt update
apt install docker-compose -y
docker build -t front:v1.0 ./front/
docker build -t back:v1.0 ./back/
docker-compose up -d