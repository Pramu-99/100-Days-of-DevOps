# Day 3 - Secure Root SSH Access

## 📌 Task
- Connect to the server via SSH.  
- Disable direct root login over SSH.  
- Ensure that only non-root users can log in, and use `sudo` to gain root access.  

---

## 🖥️ Commands Used
```bash
# Open the SSH configuration file
sudo vi /etc/ssh/sshd_config

# Find and update this line:
PermitRootLogin no

# (Optional) Allow only specific users
AllowUsers your_username

# Restart SSH service
sudo systemctl restart sshd
# or
sudo service ssh restart
