#!/bin/bash -ex

## run this to download & install  dependencies for lunchbox

# Install python extensions for Ansible
pip install --upgrade -r requirements.pip

# Install roles used from galaxy.ansible.com and/or github.com
ansible-galaxy install --force --role-file requirements.yml

