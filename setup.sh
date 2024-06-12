#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
sudo apt-get update && sudo apt-get install -y python3-pip
# Get current working directory
CWD=$(pwd)
#Create the Python Virtual Environment
# Create Directories for the project
#Copy Test Directories over
mkdir  /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/bgp/
mkdir  /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/ospf/
mkdir  /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/isis/
#      /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/frr.py
cp netlab/project1/tests/bgp/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/bgp/frr.py
cp netlab/project1/tests/ospf/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/ospf/frr.py
cp netlab/project1/tests/isis/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/isis/frr.py
#mkdir -p netlab netlab/project1 .devcontainer
# Phase 2 Install Netlab
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
sudo tee -a /etc/apt/sources.list.d/netdevops.list -y
sudo apt update && sudo apt install containerlab -y
sudo apt-get install containerd -y
sudo apt remove moby-tini -y
