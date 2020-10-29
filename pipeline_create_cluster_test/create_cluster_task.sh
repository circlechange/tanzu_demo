#!/bin/sh

# 1. Install following
# kubectl
# vsphere docker plugin
# tkg CLI

# 2. Login to Supervisor Cluster
# kubeclt vsphere-login

# 3. Create TKC
# kubectl apply -f <filename>.yml



# kubectl apply -f 

echo "Hello Create Cluster Task Script"

echo "pinging"
ping -c 3 www.vmware.com

echo "install ping"
apt install iputils-ping

