# ✅ CentOS Stream 9 – Install Nginx + PHP-FPM 8.2 (Remi Repo)

# 1. Become root
sudo -i

# 2. Enable EPEL repository
dnf install epel-release -y

# 3. Install Nginx
dnf install nginx -y
systemctl enable --now nginx
systemctl status nginx

# 4. Add Remi Repository for EL9
dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm

# 5. Reset default PHP module
dnf module reset php -y

# 6. Enable PHP 8.2 from Remi
dnf module enable php:remi-8.2 -y

# 7. Install PHP-FPM + PHP-CLI
dnf install php-fpm php-cli -y
# Optional extensions
dnf install php-mysqlnd php-gd php-zip php-curl php-xml php-mbstring -y

# 8. Configure PHP-FPM for Nginx
vi /etc/php-fpm.d/www.conf
# Set:
# user = nginx
# group = nginx
# listen = /run/php-fpm/www.sock
# listen.owner = nginx
# listen.group = nginx
# listen.mode = 0660
systemctl enable --now php-fpm
systemctl restart php-fpm

# 9. Configure Nginx for PHP
vi /etc/nginx/conf.d/default.conf
# Example configuration:
# server {
#     listen 80;
#     server_name _;
#     root /usr/share/nginx/html;
#     index index.php index.html;
#     location / {
#         try_files $uri $uri/ =404;
#     }
#     location ~ \.php$ {
#         fastcgi_pass unix:/run/php-fpm/www.sock;
#         fastcgi_index index.php;
#         include fastcgi.conf;
#     }
# }
nginx -t
systemctl restart nginx

# 10. Test PHP
echo "<?php phpinfo(); ?>" > /usr/share/nginx/html/info.php
# Browse to: http://<your-server-ip>/info.php

# 11. Configure Firewalld (if enabled)
firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=https --permanent
firewall-cmd --reload

# ✅ Done – Nginx + PHP-FPM 8.2 running on CentOS Stream 9

