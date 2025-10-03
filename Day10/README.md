## Day 10 - Automate Ecommerce Backup

📌 **Task**

* Generate SSH keys for passwordless authentication between `stapp02` (App server) and `stbkp01` (Backup server).
* Install required utilities (`zip`, `unzip`).
* Create a backup script to archive `/var/www/html/ecommerce`.
* Transfer the backup to `/backup` directory on the backup server.

---

🖥️ **Commands Used**

Generate SSH key for `steve` user

```bash
ssh-keygen
ssh-copy-id clint@stbkp01
```

Install zip/unzip packages (as root)

```bash
yum install zip unzip -y
```

Create backup script `/scripts/ecommerce_backup.sh`

```bash
vi /scripts/ecommerce_backup.sh
```

**Script content:**

```bash
#! /bin/bash

# zip the content
zip -r xfusioncorp_ecommerce.zip /var/www/html/ecommerce

# copy the file to backup server
scp -r xfusioncorp_ecommerce.zip clint@stbkp01:/backup
```

Set execute permission on script

```bash
chmod 755 /scripts/ecommerce_backup.sh
```

Run the script

```bash
bash /scripts/ecommerce_backup.sh
```

---

⚠️ **Note:**

* SSH key-based authentication ensures the script runs without manual password input.
* The script can later be scheduled via cron for automated backups.

---

✅ **Verification Output**
On backup server (`stbkp01`):

```bash
ls /backup
```

Output:

```
xfusioncorp_
```
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