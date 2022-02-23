#!/usr/bin/env bash

set -axe

mkdir -pv /etc/vinyl/certs
install -m 0600 -o root certs/* /etc/vinyl/certs
install -m 0700 -o root vinit /sbin/vinit
ln -svf /sbin/vinit /sbin/init
