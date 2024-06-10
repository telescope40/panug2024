# Create Directories for the project
#mkdir -p netlab netlab/project1 .devcontainer
# Phase 2 Install Netlab
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
sudo tee -a /etc/apt/sources.list.d/netdevops.list
sudo apt update && sudo apt install containerlab
sudo apt-get install containerd
sudo apt remove moby-tini
python3 -m pip install networklab
netlab install -y ubuntu ansible containerlab
apt install graphviz
export ANSIBLE_CONFIG=netlab/project1/ansible.cfg
cp netlab/project1/tests/frr.py /usr/local/lib/python3.8/dist-packages/netsim/validate/bgp/frr.py
