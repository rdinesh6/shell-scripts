#!/bin/bash
##
Repo_Path=/root/demo/demo-task
cp $Repo_Path/file1.txt $Repo_Path/file2.txt  $Repo_Path/test1
cp $Repo_Path/file2.txt $Repo_Path/file4.txt  $Repo_Path/test2
cp $Repo_Path/file3.txt $Repo_Path/file4.txt $Repo_Path/file5.txt  $Repo_Path/test3
sh script/git-commit.sh 
