#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
sudo apt-get update && sudo apt-get install -y python3-pip
# Get current working directory
CWD=$(pwd)
#Create the Python Virtual Environment
# Create Directories for the project
#mkdir -p netlab netlab/project1 .devcontainer
# Phase 2 Install Netlab
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
sudo tee -a /etc/apt/sources.list.d/netdevops.list -y
sudo apt update && sudo apt install containerlab -y
sudo apt-get install containerd -y
sudo apt remove moby-tini -y
