# Dockerfile

# Author       : BrunoNwask
# Github       : https://github.com/BrunoBarrosEDT
# WhatsApp     : https://wa.me/+5511994989117
# Date         : 24/09/2023
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:latest
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/BrunoBarrosEDT/CamHackerNwask"

# Working directory
WORKDIR /CamHackerNwask/
# Add files 
ADD . /CamHackerNwask

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install python3-pip php openssh-client -y
RUN pip3 install -r files/requirements.txt --break-system-packages
RUN apt-get clean

# Main command
CMD ["python3", "Nwask.py", "--noupdate"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t brunobarrosedt/camhackernwask:latest", "sudo docker run --rm -it brunobarrosedt/camhackernwask:latest"

## "sudo docker pull brunobarrosedt/camhackernwask", "sudo docker run --rm -it brunobarrosedt/camhackernwask"
