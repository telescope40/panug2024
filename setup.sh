#!/usr/bin/env bash
# Install Netlab and Run
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
tee -a /etc/apt/sources.list.d/netdevops.list -y
apt install containerlab -y
apt-get install containerd -y
apt remove moby-tini -y
apt-get install pip -y
pip install -r requirements.txt

mkdir -p /home/runner/work/panug2024/panug2024/netlab/validate/isis
mkdir -p /home/runner/work/panug2024/panug2024/netlab/validate/ospf
mkdir -p /home/runner/work/panug2024/panug2024/netlab/validate/bgp
mkdir -p /home/runner/work/panug2024/panug2024/netlab/validate/route

cp netlab/validate/isis/frr.py /home/runner/work/panug2024/panug2024/netlab/validate/isis/.
cp netlab/validate/ospf/frr.py /home/runner/work/panug2024/panug2024/netlab/validate/ospf/.
cp netlab/validate/bgp/frr.py /home/runner/work/panug2024/panug2024/netlab/validate/bgp/.
cp netlab/validate/route/frr.py /home/runner/work/panug2024/panug2024/netlab/validate/route/.

#python3.9 -m venv panug
#source venv/bin/activate
netlab install -y ubuntu ansible containerlab
#Create the Python Virtual Environment
# Create Directories for the project
cd netlab
export ANSIBLE_CONFIG=ansible.cfg
netlab up
sleep 20s
#netlab validate

