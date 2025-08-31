



# Day 4 - File Permissions

## 📌 Task
- Connect to the server via SSH.  
- Switch to root user with `sudo -i`.  
- Navigate to `/tmp` and locate the script `xfusioncorp.sh`.  
- The script currently has no permissions assigned.  
- Add **read** and **execute** permissions for all users so it can be executed.

---

## 🖥️ Commands Used
```bash
# Connect to the server
ssh steve@172.16.238.11

# Switch to root
sudo -i

# Go to /tmp directory
cd /tmp

# List details of the script
ls -lart xfusioncorp.sh

# Add read and execute permissions for all
chmod a+rx xfusioncorp.sh
