#!/bin/bash

NAME=${1}
VM_IMAGE=ubuntu-20.04.3-desktop-amd64.iso

if [ -z ${NAME} ]
then
    NAME=${1}
fi

if [ -z ${NAME} ]
then
    echo "Set VM name"
    exit 1
fi

if [ ! -f iso/${VM_IMAGE} ]
then
    mkdir -p iso
    (cd iso && \
     curl -O https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-desktop-amd64.iso)
fi


virt-install --name=${NAME} \
--vcpus=8 \
--memory=8192 \
--cdrom=${SCRIPTS}/iso/${VM_IMAGE} \
--disk size=80 \
--os-variant=ubuntu20.04
