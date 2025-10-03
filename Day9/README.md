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
