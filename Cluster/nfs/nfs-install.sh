#!/bin/bash

# From ALL k8s-nodes
apt install -y nfs-common && systemctl enable rpcbind && systemctl start rpcbind

# from Lens
kubectl create ns nfs-provisioner

# Check VALUES BEFORE !!!
helm upgrade --install nfs-provisioner -n nfs-provisioner nfs-provisioner
