#!/bin/bash

set -x

TMPpath=${TMPpath-"/tmp/BUOJTESTDIR/"}
TMPpathGroovy=${TMPpathGroovy-"/tmp/BUOGRTESTDIR/"}
BASEIMAGE="fvigotti/fatubuntu" ## contain wget
#BASEIMAGE="ubuntu:14.04"

SRC_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../src/"
sudo docker run --rm -ti \
 -v "${TMPpath}:/usr/java/src/"  \
 -v "${SRC_DIR}:/start" \
 -v "${TMPpathGroovy}:/usr/groovy/src/" \
 $BASEIMAGE /bin/bash -c "/start/install_oracle_jdk.sh && /start/install_groovy.sh &&  /bin/bash "
