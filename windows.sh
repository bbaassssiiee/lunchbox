#!/bin/bash

# Setup Ansible for Local Use under vagrant and Run
cp /vagrant/vagrant.ini /etc/ansible/hosts -f
chmod 666 /etc/ansible/hosts
# make sure hostname is set on localhost
# this is necesary for ansible to be able to run directly in the box
sudo hostname localhost
sudo ansible-playbook /vagrant/vagrant.yml --connection=local
# set this back to default
#sudo hostname default
