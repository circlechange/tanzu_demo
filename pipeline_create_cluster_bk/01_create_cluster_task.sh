#!/bin/sh

# 1. Login to Supervisor Cluster
# 2. Create TKC

echo "Create Cluster Task Script"

################################

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

echo "\n\n$ cd resource-tanzu/tanzu_clusters"
cd resource-tanzu/tanzu_clusters

echo "\n\n$ Create Tanzu Kuberentes Cluster"
kubectl apply -f cluster_manifest_01.yml



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