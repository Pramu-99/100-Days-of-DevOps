Day 18 - Install and Configure PHP 8.0 with Apache on stapp03
📌 Task

Access the stapp03 server and install PHP 8.0 with required extensions.
Ensure Apache HTTP Server and PHP-FPM services run correctly.
Verify PHP installation and service status.

🖥️ Steps and Commands

Connect to the target server:
banner@jumphost ~$ ssh banner@stapp03
The authenticity of host 'stapp03 (172.16.238.12)' can't be established.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'stapp03' (ED25519) to the list of known hosts.
banner@stapp03's password:

Switch to root user:
sudo su -
[sudo] password for banner:

Update system packages:
dnf update -y

Install Apache HTTP Server:
dnf install httpd -y

Start and enable Apache service:
systemctl start httpd
systemctl enable httpd
systemctl status httpd

Install PHP 8.0 and required extensions:
dnf install php php-cli php-fpm php-opcache php-gd php-curl php-mysqlnd -y

Verify PHP installation:
php -v

Start and enable PHP-FPM service:
systemctl start php-fpm
systemctl enable php-fpm
systemctl status php-fpm

Test PHP processing with Apache:
Create a PHP info page: echo "<?php phpinfo(); ?>" > /var/www/html/info.php
Open browser and navigate to http://stapp03/info.php

✅ Output Summary

Apache HTTP Server started successfully and listening on port 80.
PHP 8.0 installed with extensions: opcache, gd, curl, mysqlnd.
PHP-FPM service active and running.
PHP info page displayed correctly in browser confirming PHP-Apache integration.

📘 Verification Summary

Apache and PHP 8.0 fully installed and configured on stapp03.
Services verified to be active and working.
Environment ready for hosting PHP-based web applications.
✅ Status: Completed Successfully
