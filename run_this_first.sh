#!/bin/bash -ex

## run this to download & install  dependencies for lunchbox

# Install roles used from galaxy.ansible.com and/or github.com
ansible-galaxy install --force --role-file requirements.yml

# Install python extensions for Ansible
pip install --upgrade -r requirements.txt

# Bring up the VMs
vagrant up --no-provision

# Provision the VMs
ansible-playbook --ask-vault-pass vagrant.yml
