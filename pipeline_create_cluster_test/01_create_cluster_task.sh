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

echo "¥n¥nwhoami"
whoami

echo "¥n¥nCheck directory"
ls -al

echo "¥n¥nechoing MYNAME"
echo $MYNAME

echo "¥n¥nexporting MYNAME as AKIRA"
export MYNAME=AKIRA

echo "¥n¥nechoing MYNAME again"
echo $MYNAME

echo "¥n¥ncalling kubectl info"
kubectl --help

echo "¥n¥ncalling kubectl vsphere login"
kubectl vsphere login --help




#echo "pinging"
#ping -c 3 www.vmware.com

#echo "install apt-utils"
#apt -y install apt-utils

#echo "install ping"
#apt -y install iputils-ping

#echo "AFTER PING INSTALLATION"

#echo "pinging again after installation"
#ping -c 3 www.vmware.com


