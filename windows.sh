#!/bin/bash -x

# Setup Ansible for Local Use under vagrant and Run
sudo cp -f /vagrant/inventory/hosts /etc/ansible/ 
sudo chmod 666 /etc/ansible/hosts
# make sure hostname is set on localhost
# this is necesary for ansible to be able to run directly in the box
sudo hostname localhost
sudo ansible-playbook /home/vagrant/lunchbox/site.yml --connection=local
# set this back to default
#sudo hostname default
