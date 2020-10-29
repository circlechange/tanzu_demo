#!/bin/sh

PW="VMware1!"

expect -c "
set timeout 5
spawn env LANG=C kubectl vsphere login --vsphere-username administrator@vsphere.local --server=https://172.17.187.129 --insecure-skip-tls-verify
expect \"Password:\"
send \"${PW}\n\"
expect \"$\"
exit 0
"

kubectl apply -f cluster_manifest_01.yml
