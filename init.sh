#!/bin/bash
##
# BASH script that checks the following:
# demo-task is repo dir from master##
set -xv
export PATH="/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin"

##Monitor the master Repo Dir /root/demo/demo-task##

find /root/demo/demo-task | entr sh /script/cpFiles.sh


