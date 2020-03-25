#!/bin/bash
##
# BASH script that commits the following:

##change to below Dir##
cd /root/demo/demo-task      ### Master repo dir ###

#### For Master ###
git status
git branch
git checkout master
git add --all
git commit -am "File-content-changed"
git push https://rdinesh6:Lakshmi%403@github.com/emerio-ohp/demo-task.git

#### For branch1 ###
mkdir /root/demo/branch1 /root/demo/branch2 /root/demo/branch3
cd /root/demo/branch1
git clone  -b branch1 https://rdinesh6:Lakshmi%403@github.com/emerio-ohp/demo-task.git
cd /root/demo/branch1/demo-task
git status
git branch
git checkout branch1
cp /root/demo/demo-task/test* /root/demo/branch1/demo-task/ -R
git add --all
git commit -am "File-content-changed"
git push https://username:Pawsd@github.com/emerio-ohp/demo-task.git

#### For branch2 ###
cd /root/demo/branch2
git clone  -b branch2 https://username:Pawsd@github.com/emerio-ohp/demo-task.git
cd /root/demo/branch2/demo-task
git status
git branch
git checkout branch2
cp /root/demo/demo-task/test* /root/demo/branch2/demo-task/ -R
git add --all
git commit -am "File-content-changed"
git push https://username:Pawsd@github.com/emerio-ohp/demo-task.git

#### For branch3 ###
cd /root/demo/branch3
git clone  -b branch3 https://username:Pawsd3@github.com/emerio-ohp/demo-task.git
cd /root/demo/branch3/demo-task
git status
git branch
git checkout branch3
cp /root/demo/demo-task/test* /root/demo/branch3/demo-task -R
git add --all
git commit -am "File-content-changed"
git push https://username:Pawsd@github.com/emerio-ohp/demo-task.git
