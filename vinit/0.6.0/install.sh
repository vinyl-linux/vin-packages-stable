#!/usr/bin/env bash

set -axe

mkdir -pv /etc/vinyl/certs
install -m 0600 -o root certs/* /etc/vinyl/certs

rm -rf certs/ scripts/
install -m 0700 -o root * /sbin
ln -svf /sbin/vinit /sbin/init
