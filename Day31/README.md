# Task 31 – Restore Git Stash and Push Changes

## 📌 Task Overview
This task involved restoring changes from a specific Git stash entry (`stash@{1}`) inside the **games** repository on the storage server, and then committing and pushing the restored changes to the remote repository.

---

## 🖥️ Steps Performed

### 1. SSH into the storage server
```
ssh natasha@172.16.238.15
sudo -i
```

### 2. Navigate to the repository
```
cd /usr/src/kodekloudrepos/games
```

### 3. Check available stash entries
```
git stash list
```

### 4. Apply the desired stash entry (`stash@{1}`)
```
git stash apply stash@{1}
```

### 5. Pop the stash entry (removes it from stash list)
```
git stash pop stash@{1}
```

### 6. Verify status
```
git status
```

### 7. Add restored file to staging
```
git add .
```

### 8. Commit restored changes
```
git commit -m "restored changes from stash@{1}"
```

### 9. Push commit to the correct branch (`master`)
```
git push origin master
```

---

## ✔️ Verification

- `welcome.txt` was restored from stash
- Commit was successfully created
- Push to `/opt/games.git` on branch `master` completed successfully

---

## 📄 Final Result

The stash changes were successfully restored, committed, and pushed to the remote repository.

