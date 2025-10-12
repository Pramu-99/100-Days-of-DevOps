## Day 14 - Fix Apache (httpd) Service Failure

📌 **Task**

* Troubleshoot why the Apache HTTP service is failing on `stapp01`.
* Identify and stop the process causing a port conflict on port 3000.
* Ensure the Apache (httpd) service is running and accepting connections.

---

🖥️ **Commands Used**

Check Apache service status

```bash
systemctl status httpd
```

Review logs for errors

```bash
journalctl -xe
```

Check active ports and identify conflicting process

```bash
netstat -tulnp
```

Verify the conflicting service process

```bash
ps -ef | grep sendmail
```

Stop the conflicting process

```bash
kill 780
```

Restart Apache service

```bash
systemctl start httpd
```

Verify service status

```bash
systemctl status httpd
```

Check connectivity from jump host

```bash
telnet stapp01 3000
```

---

⚠️ **Note:**
The Apache service was failing due to **port 3000 already being used** by the `sendmail` process. Terminating the sendmail process freed up the port, allowing Apache to start successfully.

---

✅ **Verification Output**

```bash
● httpd.service - The Apache HTTP Server
   Active: active (running) since Sun 2025-10-12 07:06:31 UTC
   Status: "Processing requests..."
```

Apache is now running successfully and accessible on port **3000**.

---
