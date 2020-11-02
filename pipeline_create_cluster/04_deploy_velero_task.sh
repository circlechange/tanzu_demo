#!/bin/sh


echo "Hello Deploy Velero Task Script"

################################

# 0. Check some info in Pipeline

echo "\n\n$ whoami"
whoami

echo "\n\n$ pwd"
pwd

echo "\n\nCheck Directory"
echo "$ ls -al"
ls -al

echo "\n\n$ ls -al work-image"
ls -al work-image

echo "\n\n$ ls -al resource-tanzu"
ls -al resource-tanzu

echo "\n\n$ ls -al resource-tanzu/tanzu_clusters"
ls -al resource-tanzu/tanzu_clusters

echo "\n\n$ cd resource-tanzu/tanzu_clusters"
cd resource-tanzu/tanzu_clusters

echo "\n\n$ pwd"
pwd

echo "\n\n$ ls -al"
ls -al


