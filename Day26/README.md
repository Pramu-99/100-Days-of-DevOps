# 📘 README -- KodeKloud Task 26: Git Remote Setup & File Deployment

## 📝 Task Overview

The Nautilus DevOps team needs to add a new remote repository to an
existing Git working copy under `/usr/src/kodekloudrepos/beta`. After
adding the remote, a new file must be copied into the repo, committed,
and pushed to the newly added remote.

This task is performed on **ststor01** server under the user **natasha**
(with sudo access).

## ✅ Steps Performed

### 1. SSH into the Storage Server

``` bash
ssh natasha@172.16.238.15
```

Switch to the repo:

``` bash
cd /usr/src/kodekloudrepos/beta
```

### 2. Become root

``` bash
sudo su -
```

### 3. Verify Current Git Remotes

``` bash
git remote -v
```

### 4. Add the Required New Remote

``` bash
git remote add dev_beta /opt/xfusioncorp_beta.git
```

Verify:

``` bash
git remote -v
```

### 5. Copy the Required File Into the Repository

``` bash
cp /tmp/index.html .
```

### 6. Stage and Commit the File

``` bash
git add index.html
git commit -m "Added index.html File"
```

### 7. Push to the Newly Added Remote

``` bash
git push dev_beta
git push dev_beta master
```

### 8. Verify Branch

``` bash
git branch
```

## 🎉 Task Completed Successfully

All requirements were met:

✔️ Added new remote `dev_beta`\
✔️ Added file `index.html`\
✔️ Committed changes\
✔️ Pushed to `/opt/xfusioncorp_beta.git`
