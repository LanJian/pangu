#!/usr/bin/env sh

ansible-playbook -i 'localhost,' -c local playbook.yml -v -K
