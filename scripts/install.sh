#!/bin/bash
set -e
sudo yum update -y
# Ensure Python3 and pip are installed
sudo yum install -y python3 python3-pip
cd /home/ec2-user/app
# Install Python dependencies
pip3 install --user -r requirements.txt