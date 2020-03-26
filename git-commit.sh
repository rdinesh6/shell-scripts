#!/bin/bash
##
# BASH script that commits the following:
Repo_Path=/root/demo/demo-task
Repo_Path_Branch1=/root/demo/branch1
Repo_Path_Branch2=/root/demo/branch2
Repo_Path_Branch3=/root/demo/branch3
URL=https://rdinesh6:Emerio%403@github.com/emerio-ohp/demo-task.git
##change to below Dir##
cd $Repo_Path     ### Master repo dir ###


#### For Master ###

git status
git branch
git checkout master
git add --all
git commit -am "File-content-changed"
git push $URL

#### For branch1 ###
mkdir $Repo_Path_Branch1 $Repo_Path_Branch2 $Repo_Path_Branch3
cd $Repo_Path_Branch1
git clone  -b branch1 $URL
cd $Repo_Path_Branch1/demo-task
git status
git branch
git checkout branch1
cp $Repo_Path/test1 $Repo_Path_Branch1/demo-task/ -R
git add --all
git commit -am "File-content-changed"
git push $URL

#### For branch2 ###
cd $Repo_Path_Branch2
git clone  -b branch2 $URL
cd $Repo_Path_Branch2/demo-task
git status
git branch
git checkout branch2
cp $Repo_Path/test2 $Repo_Path_Branch2/demo-task/ -R
git add --all
git commit -am "File-content-changed"
git push $URL

#### For branch3 ###
cd $Repo_Path_Branch3
git clone  -b branch3 $URL
cd $Repo_Path_Branch3/demo-task
git status
git branch
git checkout branch3
cp $Repo_Path/test3 $Repo_Path_Branch3/demo-task/ -R
git add --all
git commit -am "File-content-changed"
git push $URL
