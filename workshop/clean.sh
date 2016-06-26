#!/bin/bash -xe
# start over from scratch

(cd project && vagrant destroy -f) || true
rm -rf project/*
