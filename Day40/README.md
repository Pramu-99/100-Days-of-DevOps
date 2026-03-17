# Day 40 - Docker Apache Configuration (KodeKloud)

## Objective
Install Apache inside a running Docker container and configure it to listen on a custom port.

---

## Step 1: SSH into the server
```bash
ssh steve@stapp02
```

---

## Step 2: Verify Docker images and containers
```bash
docker images
docker ps
```

---

## Step 3: Access the running container
```bash
docker exec -it kkloud /bin/bash
```

---

## Step 4: Install Apache inside container
```bash
apt update
apt install apache2 -y
```

---

## Step 5: Install text editor (nano)
```bash
apt install nano -y
```

---

## Step 6: Configure Apache port
Edit Apache ports configuration:
```bash
nano /etc/apache2/ports.conf
```

Update port:
```
Listen 5001
```

---

## Step 7: Restart Apache service
```bash
service apache2 restart
```

---

## Step 8: Verify Apache status
```bash
service apache2 status
```

Expected Output:
```
apache2 is running
```

---

## Step 9: Exit container
```bash
exit
```

---

## Step 10: Verify container is running
```bash
docker ps
```

---

## Key Learnings
- Executed commands inside a running container using `docker exec`
- Installed Apache web server inside container
- Modified Apache configuration file
- Changed default port to custom port (5001)
- Restarted and verified Apache service

---

## Notes
- Warning about ServerName is normal and can be ignored
- Apache runs inside container, not on host system

---

## Conclusion
Successfully installed and configured Apache inside a Docker container with a custom port.
