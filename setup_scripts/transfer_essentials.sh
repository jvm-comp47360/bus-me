#!/bin/bash

if ["$#" -ne 1]; then
  echo "You must provide the public IP of your EC2 instance as an argument."
  exit
fi

if [[ ! -f ./.env ]]; then
  echo "You must include the .env file in this directory."
  exit
fi

if [[ ! -f ./BusMe.pem ]]; then
  echo "You must include the RSA key in this directory."
  exit
fi

scp -i BusMe.pem .env setup.sh ubuntu@${0}:/home/ubuntu/