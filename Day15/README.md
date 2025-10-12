## Day 15 - Configure Nginx with HTTPS

📌 Task
- Install Nginx on stapp03.
- Configure the web server to serve content over HTTPS using a self-signed certificate.
- Ensure HTTP/HTTPS connections are properly handled.
- Test the server using curl.

---

🖥️ Commands Used

Switch to root:
sudo su -

Install Nginx:
yum install nginx -y

Verify installation:
nginx -v

Create a directory for SSL certificates:
mkdir -p /etc/pki/nginx

Move certificate and key to proper location:
mv /tmp/nautilus.crt /etc/pki/nginx/
mv /tmp/nautilus.key /etc/pki/nginx/
chmod 644 /etc/pki/nginx/nautilus.crt
chmod 600 /etc/pki/nginx/nautilus.key
chown root:root /etc/pki/nginx/nautilus.*

Edit Nginx configuration:
vi /etc/nginx/nginx.conf

Add the following server block for HTTPS:
server {
    listen 443 ssl;
    listen [::]:443 ssl;
    server_name 172.16.238.12;
    root /usr/share/nginx/html;
    ssl_certificate /etc/pki/nginx/nautilus.crt;
    ssl_certificate_key /etc/pki/nginx/nautilus.key;
    include /etc/nginx/default.d/*.conf;
    error_page 404 /404.html;
    location = /404.html { }
    error_page 500 502 503 504 /50x.html;
    location = /50x.html { }
}

Test Nginx configuration syntax:
nginx -t

Restart Nginx:
systemctl restart nginx
systemctl status nginx

Verify HTTP and HTTPS connections:
curl -Ik http://localhost
curl -Ik https://172.16.238.12

---

⚠️ Note
- Make sure the certificate and key are in a proper location with correct permissions; Nginx cannot read them from /tmp.
- HTTPS requires listen 443 ssl; — specifying ssl is mandatory.
- Ensure no other process is already using port 443.

---

✅ Verification Output

HTTP:
[root@stapp03 ~]# curl -Ik http://localhost
HTTP/1.1 200 OK
Server: nginx/1.20.1
Date: Sun, 12 Oct 2025 07:47:19 GMT
Content-Type: text/html
Content-Length: 49
Connection: keep-alive
ETag: "68eb5b17-31"
Accept-Ranges: bytes

HTTPS:
[root@stapp03 ~]# curl -Ik https://172.16.238.12
HTTP/1.1 200 OK
Server: nginx/1.20.1
Date: Sun, 12 Oct 2025 08:10:00 GMT
Content-Type: text/html
Content-Length: 49
Connection: keep-alive
ETag: "68eb5b17-31"
Accept-Ranges: bytes

Nginx service status:
[root@stapp03 ~]# systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Sun 2025-10-12 08:10:00 UTC

Nginx is now running successfully with HTTPS enabled.
---
