#!/bin/bash -xe
# start over from scratch

cp -r */* project/
(cd project && vagrant up control && vagrant up web && vagrant up sql) 
cd project && vagrant ssh
