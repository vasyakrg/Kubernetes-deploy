#!/bin/bash

# Install the CustomResourceDefinition resources separately
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.3.1/cert-manager.crds.yaml

# Create the namespace for cert-manager
kubectl create namespace cert-manager

# Add the Jetstack Helm repository
helm repo add cert-manager https://charts.jetstack.io

# Update your local Helm chart repository cache
helm repo update

helm upgrade --install \
  cert-manager \
  cert-manager/cert-manager \
  --namespace cert-manager \
  --version 1.3.1

kubectl -n cert-manager rollout status deploy/cert-manager

sleep 5

kubectl apply -f certmanager/orc-letsencrypt-issuer.yaml
