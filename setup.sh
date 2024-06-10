#!/usr/bin/env bash
# Phase 1 Install Tools , Create Directories , Set Up Virtual Environment
# pip is used to install all my python libraries
sudo apt-get update && sudo apt-get install -y python3-pip
# Get current working directory
CWD=$(pwd)
# Install virtualenv
pip install virtualenv
#Create the Python Virtual Environment
virtualenv $CWD
# Add to
echo 'source ./bin/activate' >> ~/.bashrc
# Activate the python virtual environment
source ./bin/activate
# Create DockerFile
