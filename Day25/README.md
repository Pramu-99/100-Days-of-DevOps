# Day 25 -- Git Branching, Commit, Merge & Push

## 📌 Task

-   SSH into the application server (ststor01).
-   Navigate to the Git repository under `/usr/src/kodekloudrepos/news`.
-   Create a new branch **devops** from **master**.
-   Copy **index.html** from `/tmp` into the repository.
-   Commit the file to the **devops** branch.
-   Merge **devops** into **master**.
-   Push both **master** and **devops** branches to the remote repo
    located at `/opt/news.git`.

------------------------------------------------------------------------

## 🖥️ Commands Used

### Login to the server

    ssh natasha@172.16.238.15

### Navigate to repo

    cd /usr/src/kodekloudrepos/news

### Check existing branch

    sudo git branch

### Switch to root

    sudo su -

### Create a new branch named devops

    git checkout -b devops

### Copy index.html from /tmp

    cp /tmp/index.html .

### Add and commit the file

    git add .
    git commit -m "Added index.html file"

### Switch back to master

    git checkout master

### Merge devops into master

    git merge devops

### Push master branch

    git push origin master

### Push devops branch

    git push origin devops

------------------------------------------------------------------------

## ⚠️ Note

-   The `devops` branch must be created before committing changes.
-   Git merge was done using **fast-forward**.
-   Ensure remote repo `/opt/news.git` is reachable.

------------------------------------------------------------------------

## ✅ Verification Output

### Check local branches

    git branch

### Check repo files

    ls -a

### Verify remote branches

    git branch -a

------------------------------------------------------------------------

## 🎉 Result

The file **index.html** was successfully added on the **devops** branch,
merged into **master**, and both branches were pushed to the remote
repository.
