#!/bin/bash

function check_exit() {
  if [ $? -ne 0 ]; then
    echo "Running $1 failed to run"
    exit 1
  fi
}

export COREOS_ASSEMBLER_CONFIG_GIT="/root/git/my-coreos-config"
BUILD=/root/tmp/my-coreos
mkdir -p $BUILD
cd $BUILD
rm -rf *

cosa init https://github.com/coreos/fedora-coreos-config.git --force
check_exit "cosa init"

cosa fetch
check_exit "cosa fetch"

cosa build
check_exit "cosa build"

cosa buildextend-metal
check_exit "cosa metal"

cosa buildextend-metal4k
check_exit "cosa metal4k"

cosa buildextend-live
check_exit "cosa live"
