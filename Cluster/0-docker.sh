#!/bin/bash

# to all nodes
apt update && apt install -y curl && curl https://get.docker.com -o install.sh && sh install.sh
