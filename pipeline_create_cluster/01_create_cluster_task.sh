#!/bin/sh

# 0. Check some info in Pipeline
# 1. Login to Supervisor Cluster
# 2. Create TKC


#############

# 0. Check some info in Pipeline

echo "Hello Create Cluster Task Script"

echo "\n\n$ whoami"
whoami

echo "\n\nCheck Directory"
echo "$ ls -al"
ls -al

echo "\n\n$ ls -al resource-tanzu"
ls -al resource-tanzu

echo "\n\n$ ls -al work-image"
ls -al work-image



# 1. Login to Supervisor Cluster
echo "\n\n$ Login to Tanzu Supervisor Cluster"
PW="VMware1!"

expect -c "
set timeout 5
spawn env LANG=C kubectl vsphere login --vsphere-username administrator@vsphere.local --server=https://172.17.187.129 --insecure-skip-tls-verify
expect \"Password:\"
send \"${PW}\n\"
expect \"$\"
exit 0
"


# 2. Create TKC
echo "\n\n$ Create Tanzu Kuberentes Cluster"
kubectl apply -f resource_tanzu/tanzu_clusters/cluster_manifest_01.yml



#######

#echo "\n\nechoing MYNAME"
#echo $MYNAME

#echo "\n\nexporting MYNAME as AKIRA"
#export MYNAME=AKIRA

#echo "\n\nechoing MYNAME again"
#echo $MYNAME

# echo "¥n¥ncalling kubectl info"
# kubectl --help

# echo "¥n¥ncalling kubectl vsphere login"
# kubectl vsphere login --help