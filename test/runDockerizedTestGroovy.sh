#!/bin/bash

set -x

TMPpath=${TMPpath-"/tmp/BUOJTESTDIR/"}
BASEIMAGE="fvigotti/fatubuntu" ## contain wget
#BASEIMAGE="ubuntu:14.04"

SRC_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../src/"
sudo docker run --rm -ti -v "${SRC_DIR}:/start" -v "${TMPpath}:/usr/java/src/" $BASEIMAGE /bin/bash -c "/start/install_oracle_jdk.sh && /start/install_groovy.sh &&  /bin/bash "
