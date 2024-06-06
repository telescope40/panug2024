#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
sudo apt-get update && sudo apt-get install -y python3-pip
# Run Git Setup
#git init
git config --global user.name "Louis DeVictoria"
git config --global user.email "telescope40@gmail.com"
git config --global push.default simple
git config --global init.defaultBranch main
git remote set-url origin
# Install virtualenv
pip install virtualenv -y
#Create the Python Virtual Environment
virtualenv /home/codespace/venv
# Add to
echo 'source /home/codespace/venv/bin/activate' >> ~/.bashrc
# Activate the python virtual environment
source /home/codespace/venv/bin/activate
# Create Directories for the project
mkdir -p netlab netlab/project1 .devcontainer
# Phase 2 Install Netlab
python3 -m pip install networklab
netlab install -y ubuntu ansible containerlab libvirt
apt install graphviz


# Create DockerFile
