# KodeKloud Task 29 – Git Pull & Fast-Forward Merge (Documentation)

This document records the steps performed during **Task 29**, including all Git operations and terminal output.

---

## ✔️ Task Summary

You successfully:

1. Connected to the Storage server using SSH  
2. Navigated to the `story-blog` Git repository  
3. Checked branch and commit history  
4. Switched to the `master` branch  
5. Pulled latest updates from the remote repository  
6. Performed a **fast‑forward merge** that added `fox-and-grapes.txt`  

---

## ✔️ Terminal Log (Reference)

### SSH Login
```
ssh max@172.16.238.15
```

### Branch Status
```
git branch
  master
* story/fox-and-grapes
```

### Switch to Master
```
git checkout master
```

### Git Pull (Correct Command)
```
git pull origin master
```

### Fast‑Forward Output
```
Updating 57fba70..1b3c7c3
Fast-forward
 fox-and-grapes.txt | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 fox-and-grapes.txt
```

---

## ✔️ MD5 Checksum

Checksum will be generated based on this file’s content once downloaded.

---

## 🎉 Task Completed Successfully!

