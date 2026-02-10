# 📘 KodeKloud Engineer – Task 28  
## **Git Cherry-Pick Task Documentation**

### 🚀 **Task Summary**
You were asked to apply a specific commit from the `feature` branch to the `master` branch in the **cluster** repository located at:

```
/usr/src/kodekloudrepos/cluster
```

This was completed on **ststor01** as user **natasha** (root escalated).

---

## ✅ **Steps Completed**

### 1. SSH into Storage Server
```bash
ssh natasha@172.16.238.15
```

### 2. Switch to Root
```bash
sudo -i
```

---

## 📂 3. Navigate to the Git Repository
```bash
cd /usr/src/kodekloudrepos/cluster
```

---

## 🔄 4. Fetch Latest Data From Origin
```bash
git fetch origin
```

---

## 📜 5. View Feature Branch Commit History
```bash
git log feature --oneline
```

Output:
```
0241ea4 Update welcome.txt
3e30b56 Update info.txt  ← commit to cherry-pick
17f080b Add welcome.txt
a66611b initial commit
```

---

## 🔀 6. Checkout the Master Branch
```bash
git checkout master
```

---

## 🍒 7. Cherry-Pick the Required Commit
```bash
git cherry-pick 3e30b56
```

Output:
```
[master d8018e4] Update info.txt
1 file changed, 1 insertion(+), 1 deletion(-)
```

---

## 📤 8. Push the Updated Master Branch to Remote
```bash
git push origin master
```

Output:
```
To /opt/cluster.git
   17f080b..d8018e4  master -> master
```

---

## 🎉 **Task Completed Successfully**

✔ Cherry-picked commit `3e30b56` into master  
✔ Resolved cleanly without conflicts  
✔ Pushed changes back to remote repository  

---

## 📄 End of Documentation  
**Task Day: 28**
