#!/bin/bash

POSTINSTALL_DIR=scripts/postinstall
NEED_VM=${1}

sudo apt update
sudo apt-get update

${POSTINSTALL_DIR}/bashrc-update.sh
${POSTINSTALL_DIR}/other.sh
${POSTINSTALL_DIR}/docker-install.sh
${POSTINSTALL_DIR}/k8s-install.sh

if [ ! -z ${NEED_VM} ]
then
   ${POSTINSTALL_DIR}/kvm-install.sh
fi


