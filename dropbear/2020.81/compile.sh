#!/usr/bin/env bash
#
set -axe

make PROGRAMS="dropbear dropbearkey dbclient dropbearconvert scp"
