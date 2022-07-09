#!/bin/bash
sudo docker-compose down -v
sudo docker system prune -a --volumes
sudo docker-compose up --build
