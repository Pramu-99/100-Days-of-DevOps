## Day 16 - Install and Configure Nginx on stlb01

📌 Task
- Access the stlb01 server and install Nginx.
- Ensure the service runs correctly.
- Verify configuration syntax and restart the service successfully.

---

🖥️ Steps and Commands

Connect to the target server:
thor@jumphost ~$ ssh loki@stlb01
The authenticity of host 'stlb01 (172.16.238.14)' can't be established.
ED25519 key fingerprint is SHA256:YLBPS1+Y2HeLR1HXemTL2eQcHX/NUln/4Q275RtgiGk.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'stlb01' (ED25519) to the list of known hosts.
loki@stlb01's password: 

Switch to root user:
sudo su -
[sudo] password for loki: 

Now install Nginx using yum:
yum install nginx -y

📦 Output Summary:
- Dependencies like `nginx-core`, `nginx-filesystem`, and `centos-logos-httpd` were installed.
- Weak dependency `logrotate` was also installed.
- All packages installed successfully without errors.
- The installation completed with the message “Complete!”

Verify Nginx installation:
nginx -v

Start and enable the Nginx service:
systemctl restart nginx
systemctl status nginx

✅ Output:
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Sun 2025-10-12 16:20:20 UTC
   Main PID: 2241 (nginx)
   Tasks: 17
   Memory: 16.1M
   CGroup: /system.slice/nginx.service
   Processes: multiple worker processes running normally

Note:
- Nginx started successfully with no syntax or port conflict errors.
- The only non-critical message seen: "Failed to send unit change signal for nginx.service: Connection reset by peer" — this can be safely ignored; it’s related to containerized or virtual environments.

Check Nginx configuration syntax for correctness:
nginx -t
✅ Output:
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful

Restart Nginx again after config validation:
systemctl restart nginx
systemctl status nginx

✅ Final Output:
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Sun 2025-10-12 16:24:57 UTC
   Main PID: 2574 (nginx)
   Tasks: 17
   Memory: 16.1M
   CGroup: /system.slice/nginx.service
   All worker processes running correctly.

---

📘 Verification Summary
- Nginx installed and configured successfully on stlb01.
- Service is active and running.
- Configuration syntax validated successfully.
- Restarted multiple times with no failures.
- Environment stable and ready for HTTPS or reverse proxy configuration in upcoming tasks.

✅ Status: Completed Successfully
