# Day 1 - Create User with Non-Interactive Shell

## 📌 Task
Create a Linux user named `ravi` and assign a non-interactive shell (`/usr/sbin/nologin`).

---

## 🖥️ Commands Used
```bash
# Create user 'ravi' with nologin shell
sudo useradd -s /usr/sbin/nologin ravi

# (Optional) Create with home directory
sudo useradd -m -s /usr/sbin/nologin ravi

# Verify user
id ravi
getent passwd ravi

# Day 1 - Create User with Non-Interactive Shell

## 📌 Task
Create a Linux user named `ravi` and assign a non-interactive shell (`/usr/sbin/nologin`).

---

## 🖥️ Commands Used
```bash
# Create user 'ravi' with nologin shell
sudo useradd -s /usr/sbin/nologin ravi

# (Optional) Create with home directory
sudo useradd -m -s /usr/sbin/nologin ravi

# Verify user
id ravi
getent passwd ravi


