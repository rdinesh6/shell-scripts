# shell-scripts to do auto-commit all branches from master.

# Read the below request carefully
1.       In Github, following are the directory structure
a.       Test1 (Folder)/file1, file2,
b.       Test2 (Folder)/file2,file4
c.       Test3 (Folder)/file3,file4,file5
d.       file1
e.       file2
f.       file3
g.       file4
h.       file5

Master branch have the above structure
Branch 1 ---- Test1 (Folder alone)
Branch 2 ---- Test2 (Folder alone)
Branch 3 ---- Test3 (Folder alone)

Write a shell/batch script as per below condition
Whenever any changes happened on files file1,file2,file3,file4,file5 it should commit to the respective folder in Master and also commit the changes in to respective branch

# Pre-request 

Install *entr* tools to your Linux OS Environment 
http://eradman.com/entrproject/  

Clone the App Code SCM Eg: https://github.com/emerio-ohp/demo-task

```1. Clone this branch git-merge

2. (*) git-repo-watcher  (*) git-repo-watcher-hooks (*) init.sh (*) watcher.sh  # 1st excution files -> MoVE these files to /usr/local/bin/ DIR

3. Now Configure the Services 
   3.1 Move the files (*) git-repo-watcher.service & (*) local-repo-monitor.service
   3.2 In watcher.sh --> Edit the path in line -> sh /usr/local/bin/git-repo-watcher -d "/path/to/your/App-code/repository" -> Path            where you've cloned the repo App-code SCM (not the path of this script repo)
   3.3 In init.sh --> Edit the line -->  find /path/to/your/App-code/repository | entr sh /Path-where-you-cloned-the-script/cpFiles.sh
   3.4 Go to /usr/local/bin/git-repo-watcher-hooks file and edit the line 20.
     change_pulled() {
     echo "Starting build for commit: $@"
     ./Path-where-you-cloned-the-script/git-pull-repo.sh
     }
   3.4 Go to Path-where-you-cloned-the-script, Edit file "git-pull-repo.sh" line 1. /path/to/your/App-code/repository
   3.5 In cpFiles.sh --> Edit Repo_Path=/path/to/your/App-code/repository
   3.6 In git-commit.sh --> Edit 
     Repo_Path=/path/to/your/App-code/repository 
     Repo_Path_Branch1=/path/to/your/App-code/repository
     Repo_Path_Branch2=/path/to/your/App-code/repository
     Repo_Path_Branch3=/path/to/your/App-code/repository
     URL= GIT URL of your APP code Eg. https://rdinesh6:Lakshmi%403@github.com/emerio-ohp/demo-task.git
   
```
4. Run Below Commands to start the service
#systemctl enable git-repo-watcher.service
#systemctl enable local-repo-monitor.service
#systemctl start git-repo-watcher.service
#systemctl start local-repo-monitor.service


