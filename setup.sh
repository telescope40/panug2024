#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
#sudo apt-get update && sudo apt-get install -y python3-pip
# Get current working directory
# Create the 'telescope' user with a home directory
useradd -m -s /bin/bash telescope

# Set a password for the 'telescope' user (optional, can be omitted or handled differently)
echo "telescope:telescope" | chpasswd

# Grant 'telescope' user sudo privileges (optional, remove if not needed)
echo "telescope ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/telescope

# Make 'telescope' the owner of the /workspace directory
chown -R telescope:telescope /workspace

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
netlab install -y ubuntu ansible containerlab
#Create the Python Virtual Environment
# Create Directories for the project
cd netlab
export ANSIBLE_CONFIG=ansible.cfg
netlab up
sleep 20s
netlab validate



#git remote add netlab git@github.com:ipspace/netlab.git
