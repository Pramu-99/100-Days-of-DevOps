



# Day 5 - Configure SELinux

## 📌 Task
- Connect to the server via SSH.  
- Switch to root user using `sudo -i`.  
- Ensure SELinux packages are installed (`selinux-policy`, `selinux-policy-targeted`).  
- Navigate to `/etc/selinux/`.  
- Verify and update the `config` file to set the desired SELinux mode (e.g., `enforcing`, `permissive`, or `disabled`).  

---

## 🖥️ Commands Used
```bash
# Connect to server
ssh steve@172.16.238.11

# Switch to root
sudo -i

# Check SELinux policy packages
sudo yum install -y selinux-policy selinux-policy-targeted

# Navigate to SELinux directory
cd /etc/selinux/

# List files
ls -l

# Change permissions temporarily (if needed to edit)
chmod 777 config

# Edit the SELinux config file
vi config
