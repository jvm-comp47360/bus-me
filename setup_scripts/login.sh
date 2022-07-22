#!/bin/bash

if [[ ! -f ./BusMe.pem ]]; then
  echo "You must include the RSA key in this directory."
  exit
fi

# Note: Just a sample, please change the URL depending on the VM you are using.
ssh -i "BusMe.pem" ubuntu@ec2-52-214-188-206.eu-west-1.compute.amazonaws.com