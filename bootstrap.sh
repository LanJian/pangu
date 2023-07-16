#!/bin/sh

# install ansible
sudo apt update
sudo apt install -y --no-install-recommends python3 python3-pip sudo
python3 -m pip install ansible
