# Create Directories for the project
#mkdir -p netlab netlab/project1 .devcontainer
# Phase 2 Install Netlab
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
sudo tee -a /etc/apt/sources.list.d/netdevops.list -y
sudo apt update && sudo apt install containerlab -y
sudo apt-get install containerd -y
sudo apt remove moby-tini -y
