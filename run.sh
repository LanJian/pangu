#!/usr/bin/env sh

ansible-galaxy install -r requirements.yml
ansible-playbook -i 'localhost,' -c local playbook.yml -v -K
