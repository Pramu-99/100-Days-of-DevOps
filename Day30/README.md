# KodeKloud Task 30 – Git Reset (Hard) & Force Push  
## MD5 Documentation

### **Task Summary**
This task involved rolling back a Git repository to a specific commit using `git reset --hard` and overwriting the remote repository using a forced push.

---

## **Steps Executed**

### **1. Logged into the Storage Server**
```bash
ssh natasha@172.16.238.15
sudo su -
```

---

### **2. Navigated to the Demo Repository**
```bash
cd /usr/src/kodekloudrepos/demo
```

---

### **3. Checked Git Commit History**
```bash
git log --oneline
```

---

### **4. Reset the Repository to Commit `0e8e637`**
```bash
git reset --hard 0e8e637
```

This restored the repo to the state of the commit:  
**add data.txt file**

---

### **5. Forced Push to Update Remote History**
```bash
git push origin master --force
```

This overwrote the remote repo with the reset state.

---

### **6. Verified Final Commit History**
```bash
git log --oneline
```

Final commits:
```
0e8e637 add data.txt file
6487e49 initial commit
```

---

## **MD5 Checksum Notice**
To generate MD5 checksum after download:

```bash
md5sum task30_md5_doc.md
```

---

## **Task Completed**
This Markdown file documents the full procedure for **KodeKloud Engineer — Task Day 30**.

