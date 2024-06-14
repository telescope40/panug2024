#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
sudo apt-get update && sudo apt-get install -y python3-pip
# Get current working directory


# Phase 2 Install Netlab
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" |\
sudo tee -a /etc/apt/sources.list.d/netdevops.list -y
sudo apt install containerlab -y
sudo apt-get install containerd -y
sudo apt remove moby-tini -y
make install
python3.9 -m venv panug
source venv/bin/activate
make install
cd netlab/project1
netlab install -y ubuntu ansible containerlab
export ANSIBLE_CONFIG=ansible.cfg
PATH=$(find ../../.. -wholename */netsim/validate)
dirbgp="${PATH}/bgp/"
dirospf="${PATH}/ospf/"
dirlinux="${PATH}/linux/"
dirisis="${PATH}/isis/"
#Create the Python Virtual Environment
# Create Directories for the project
#Copy Test Directories over
cp netlab/project1/tests/linux/frr.py $dirlinux
cp netlab/project1/tests/bgp/frr.py $dirbgp
cp netlab/project1/tests/ospf/frr.py $dirospf
cp netlab/project1/tests/isis/frr.py $dirisis
netlab up
sleep 20s
netlab validate
