#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
#sudo apt-get update && sudo apt-get install -y python3-pip
# Get current working directory


# Phase 2 Install Netlab
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
tee -a /etc/apt/sources.list.d/netdevops.list -y
apt install containerlab -y
apt-get install containerd -y
apt remove moby-tini -y
apt-get install pip -y
pip install -r requirements.txt
#python3.9 -m venv panug
#source venv/bin/activate
cd netlab/project1
netlab install -y ubuntu ansible containerlab
export ANSIBLE_CONFIG=ansible.cfg
#Create the Python Virtual Environment
# Create Directories for the project
netlab up
sleep 20s
netlab validate



#git remote add netlab git@github.com:ipspace/netlab.git
