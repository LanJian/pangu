# Personal Provisioning

## Usage

Prerequisite steps:
1. [Optional] Generate an SSH key: `ssh-keygen -t ed25519` and add the public key to Github
2. Check out this repo:
    * HTTPS: `git clone https://github.com/LanJian/pangu.git`
    * SSH: `git clone git@github.com:LanJian/pangu.git`

To provision the machine:
1. Run `./bootstrap.sh` to install ansible
2. Run the desired playbook:
    * Dev box: `ansible-playbook --verbose --ask-become-pass playbooks/dev_box.yml`
