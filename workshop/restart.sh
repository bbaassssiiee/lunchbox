#!/bin/bash -xe
# start over from scratch

(cd project && vagrant destroy -f) || true
rm -rf project
mkdir -p project
cp -r */* project/
chmod 700 project && chmod 600 project/vagrant.rsa
(cd project && vagrant up)
cd project
vagrant ssh
