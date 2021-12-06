#! /bin/bash

# Uninstall old versions

sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# this will download the script package to install docker
curl -fsSL https://get.docker.com -o get-docker.sh
# this will install the package
sudo sh get-docker.sh

sudo systemctl enable docker
sudo systemctl start docker
sudo docker run hello-world
sudo docker run docker/whalesay cowsay hello-world!
