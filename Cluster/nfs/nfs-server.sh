#!/bin/bash

# ubuntu 20.04

NODE1=65.21.177.5
NODE2=65.21.177.4
NODE3=65.21.177.3

FOLDER=/mnt/data

apt update && apt install -y nfs-kernel-server

mkdir -p $FOLDER
chmod 777 -R $FOLDER
chown nobody:nogroup -R $FOLDER

echo "$FOLDER ${NODE1}/24(rw,sync,no_subtree_check,no_root_squash) ${NODE2}/24(rw,sync,no_subtree_check,no_root_squash) ${NODE3}/24(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports

systemctl restart nfs-kernel-server
