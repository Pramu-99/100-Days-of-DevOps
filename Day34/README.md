# Task Day 34 – Git Hook & Tag Automation Documentation

## **Overview**
This documentation explains the steps performed on **Day 34**, involving:

- Connecting to the remote server
- Editing and enabling a Git `post-update` hook
- Merging feature updates into the master branch
- Creating and fetching Git tags automatically

---

## **1. SSH Into the Storage Server**
```bash
ssh natasha@172.16.238.15
```

Accept the ED25519 fingerprint and enter the password when prompted.

---

## **2. Switch to Root User**
```bash
sudo su -
```

---

## **3. Edit the Git Hook**
Navigate to the Git hooks directory:

```bash
vi /opt/demo.git/hooks/post-update
```

Add the following script:

```bash
#!/bin/bash
cd /opt/demo.git
git_tag=release-$(date "+%Y-%m-%d")
git tag $git_tag
git push origin --tags
```

Save and exit.

---

## **4. Make the Hook Executable**
```bash
chmod u+x /opt/demo.git/hooks/post-update
```

---

## **5. Navigate to Local Repo and Merge Feature Branch**
```bash
cd /usr/src/kodekloudrepos/demo
git switch master
git merge feature
```

---

## **6. Push Master Branch to Remote**
```bash
git push --set-upstream origin master
```

---

## **7. Fetch Tags Created by the Hook**
```bash
git fetch --tags
```

Verify the tag:

```bash
git tag
```

Example output:
```
release-2026-03-02
```

---

## **Conclusion**
Day 34 involved:

- Setting up a `post-update` Git hook to automatically create versioned tags  
- Merging updates into the master branch  
- Pushing changes to the remote repository  
- Validating that the tag was created and fetched correctly  

This automation ensures consistent release tagging after every update.

---


