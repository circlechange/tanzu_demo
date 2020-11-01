#!/bin/sh

# 1. Login to TKC
# 2. Deploy Contour Ingress Controller

echo "Deploy Ingress Task Script"

################################

# 1. Login to TKC
echo "\n\n$ Login to TKC"

PW="VMware1!"

expect -c "
set timeout 5
spawn env LANG=C kubectl vsphere login --vsphere-username administrator@vsphere.local --server=https://172.17.187.129 --insecure-skip-tls-verify
expect \"Password:\"
send \"${PW}\n\"
expect \"$\"
exit 0
"

    
# 2. Deploy TKC