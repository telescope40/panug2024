#!/usr/bin/env bash
# Install Netlab and Run
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
