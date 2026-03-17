# Day 41 - Dockerfile Creation and Editing (KodeKloud)

## Objective
Navigate to the Docker directory and create/edit a Dockerfile using vi editor with proper permissions.

---

## Step 1: SSH into the server
```bash
ssh banner@stapp03
```

---

## Step 2: Navigate to Docker directory
```bash
cd /opt/docker
```

---

## Step 3: Attempt to access Dockerfile directly (Incorrect)
```bash
cd /opt/docker/Dockerfile
```

### Result:
- Error occurs because `Dockerfile` is a file, not a directory.

---

## Step 4: Edit Dockerfile using vi (case-sensitive mistake)
```bash
vi DOckerfile
```

### Note:
- Linux is case-sensitive
- `DOckerfile` is different from `Dockerfile`

---

## Step 5: Open correct Dockerfile
```bash
vi Dockerfile
```

---

## Step 6: Use sudo for elevated permissions
```bash
sudo vi Dockerfile
```

### Why sudo?
- Required when file is owned by root
- Allows editing protected files

---

## Key Learnings
- Linux file system is case-sensitive
- Difference between file and directory navigation
- Importance of correct file naming (Dockerfile)
- Using `vi` editor to modify files
- Using `sudo` for administrative access

---

## Notes
- `Dockerfile` must have exact naming (capital D)
- Avoid typos like `DOckerfile`
- Always check permissions before editing system files

---

## Conclusion
Successfully accessed and edited the Dockerfile using correct path, filename, and permissions.
