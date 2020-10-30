#!/bin/sh

# 1. Pipeline 内のシェルの動作を確認
# 2. Supervisor Cluster にログイン
# 3. TKC 作成


#############

# 1. Pipeline 内のシェルの動作を確認

echo "Hello Create Cluster Task Script"

echo "\n\nwhoami"
whoami

echo "\n\nls -al"
ls -al

echo "\n\nls -al resource-tanzu"
ls -al resource-tanzu

echo "\n\nls -al work-image"
ls -al work-image

echo "\n\nechoing MYNAME"
echo $MYNAME

echo "\n\nexporting MYNAME as AKIRA"
export MYNAME=AKIRA

echo "\n\nechoing MYNAME again"
echo $MYNAME

# echo "¥n¥ncalling kubectl info"
# kubectl --help

# echo "¥n¥ncalling kubectl vsphere login"
# kubectl vsphere login --help


# 2. Supervisor Cluster にログイン



# 3. TKC 作成

