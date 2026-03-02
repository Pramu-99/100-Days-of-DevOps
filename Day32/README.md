# Day 32 – Git Rebase and Force Push Task Documentation

## 📌 Task Overview
This task involved updating the `feature` branch by rebasing it with the latest changes from `origin/master` and then force‑pushing the updated branch to the remote repository.

---

## 🖥️ Steps Performed

### 1. SSH into the Storage Server
```bash
ssh natasha@172.16.238.15
```

---

### 2. Switch to Root User
```bash
sudo su -
```

---

### 3. Navigate to Repository Directory
```bash
cd /usr/src/kodekloudrepos/news
```

Checked files:
```
feature.txt  
info.txt
```

---

### 4. Check Current Branch
```bash
git branch
```
Output:
```
* feature
  master
```

---

### 5. Fetch Latest Remote Updates
```bash
git fetch origin
```

---

### 6. Rebase Feature Branch with Master
```bash
git rebase origin/master
```
Output:
```
Successfully rebased and updated refs/heads/feature.
```

---

### 7. Force Push Updated Feature Branch
```bash
git push --force origin feature
```
Output:
```
+ d2ea266...c4950f0 feature -> feature (forced update)
```

---

## ✅ Final Result
The `feature` branch is now properly rebased and force‑pushed.  
The remote branch has been updated with the rewritten history.

---


