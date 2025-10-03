## Day 9 - Fix MariaDB Service Failure

📌 **Task**

* Troubleshoot why MariaDB service is failing on `stdb01`.
* Fix the permission issue preventing MariaDB from creating its PID file.
* Ensure MariaDB is running and accepting SQL requests.

---

🖥️ **Commands Used**

Check MariaDB status

```bash
systemctl status mariadb
```

Review logs for errors

```bash
cat /var/log/mariadb/mariadb.log | tail -50
```

Verify data directory ownership

```bash
ls -ld /var/lib/mysql
```

Fix ownership and permissions on `/run/mariadb`

```bash
chown -R mysql:mysql /run/mariadb
chmod 755 /run/mariadb
```

Restart MariaDB service

```bash
systemctl restart mariadb
```

Verify service status

```bash
systemctl status mariadb
```

---

⚠️ **Note:**
The service was failing due to **permission denied** when writing the PID file at `/run/mariadb/mariadb.pid`. Adjusting directory ownership back to `mysql:mysql` fixed the issue.

---

✅ **Verification Output**

```bash
● mariadb.service - MariaDB 10.5 database server
   Active: active (running) since Fri 2025-10-03 ...
   Status: "Taking your SQL requests now..."
```

MariaDB is now running successfully and ready to accept connections.

---
Day 8 - Install and Configure Ansible
📌 Task

Install Ansible 4.8.0 on the jump host using pip3.

Ensure proper PATH configuration so Ansible is globally accessible.

Verify Ansible installation and version.

🖥️ Commands Used
# Install Ansible version 4.8.0
sudo pip3 install ansible==4.8.0


⚠️ Note: Installing with sudo may show a warning about running pip as root.
Best practice is to use a virtual environment, but for lab purposes, system-wide install is acceptable.

# Add Ansible path to environment variables
echo 'export PATH=$PATH:/usr/local/bin' | sudo tee -a /etc/profile

# Reload profile so changes take effect
source /etc/profile

# Verify Ansible installation
ansible --version

✅ Verification Output
ansible [core 2.11.12] 
  config file = None
  ansible python module location = /usr/local/lib/python3.9/site-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 3.9.18
  jinja version = 3.1.6
  libyaml = True