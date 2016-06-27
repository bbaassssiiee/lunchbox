#!/bin/bash -xe
# start over from scratch
rm -rf project/*
cp -r */* project/

mkdir -p project/inventory/group_vars
echo 'ansible_user: vagrant' > project/inventory/group_vars/all
(cd project && vagrant up control && vagrant up web && vagrant up sql) 
cd project && vagrant ssh
