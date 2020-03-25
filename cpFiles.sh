#!/bin/bash
##

cp /root/demo/demo-task/file1.txt /root/demo/demo-task/file2.txt  /root/demo/demo-task/test1
cp /root/demo/demo-task/file2.txt /root/demo/demo-task/file4.txt  /root/demo/demo-task/test2
cp /root/demo/demo-task/file3.txt /root/demo/demo-task/file4.txt /root/demo/demo-task/file5.txt  /root/demo/demo-task/test3
sh script/git-commit.sh
