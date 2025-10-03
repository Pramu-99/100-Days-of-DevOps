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
xfusioncorp_ecommerce.zip
```

The ecommerce site content was successfully archived and copied to the backup server.

---
