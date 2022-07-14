#!/bin/bash
sudo docker-compose down -v

sudo docker stop "$(sudo docker ps -a -q)"
sudo docker rm "$(sudo docker ps -a -q)"
sudo docker rmi "$(sudo docker images -a -q)"

sudo docker-compose up --build
