#!/usr/bin/env bash

set -axe

make install
ln -svf /usr/bin/dbclient /usr/bin/ssh
