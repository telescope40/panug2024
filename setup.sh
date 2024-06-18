#!/usr/bin/env bash
# Install Netlab and Run
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
tee -a /etc/apt/sources.list.d/netdevops.list -y
apt install containerlab -y
apt-get install containerd -y
apt remove moby-tini -y
apt-get install pip -y
pip install -r requirements.txt

mkdir -p /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/isis
mkdir -p /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/ospf
mkdir -p /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/bgp
mkdir -p/opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/route

cp validation/isis/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/isis/.
cp validation/ospf/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/ospf/.
cp validation/bgp/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/bgp/.
cp validation/route/frr.py /opt/hostedtoolcache/Python/3.9.19/x64/lib/python3.9/site-packages/netsim/validate/route/.

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
