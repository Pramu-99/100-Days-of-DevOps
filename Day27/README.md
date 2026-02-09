# 📘 README -- KodeKloud Task 27: Git Revert Commit

## 📝 Task Overview

The Nautilus DevOps team has requested to **revert the latest commit**
made in the `news` repository located at:

    /usr/src/kodekloudrepos/news

This task is performed on **ststor01** server as **natasha** (with sudo
access).

------------------------------------------------------------------------

## ✅ Steps Performed

### 1. SSH into Storage Server

``` bash
ssh natasha@172.16.238.15
```

### 2. Switch to Root

``` bash
sudo su -
```

### 3. Navigate to the Git Repository

``` bash
cd /usr/src/kodekloudrepos/news
```

------------------------------------------------------------------------

## 🔄 4. Revert the Latest Commit

An incorrect command was attempted:

    git recert HEAD

Correct command:

``` bash
git revert HEAD
```

Output:

    [master d1554ed] Revert "add data.txt file"
     1 file changed, 1 insertion(+)
     create mode 100644 info.txt

------------------------------------------------------------------------

## ✏️ 5. Amend the Commit Message

``` bash
git commit --amend -m "revert news"
```

------------------------------------------------------------------------

## 📜 6. Verify Commit History

``` bash
git log --oneline
```

Output:

    464f72b (HEAD -> master) revert news
    40aa45d (origin/master) add data.txt file
    f4f3ec0 initial commit

------------------------------------------------------------------------

## 🎉 Task Completed Successfully

✔️ Reverted latest commit\
✔️ Updated commit message\
✔️ Verified final commit history
