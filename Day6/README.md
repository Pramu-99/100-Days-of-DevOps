



Day 6 - Create a Cron Job Linux Server
📌 Task

Connect to the App Server via SSH.

Switch to root user using sudo su -.

Install the cronie package (which provides cron services).

Start and enable the crond service.

Create a cron job for the root user to run every 5 minutes that writes "hello" into /tmp/cron_text.

Verify that the job is working as expected.

🖥️ Commands Used
# Connect to the App Server
ssh tony@stapp01

# Switch to root
sudo su -

# Install cronie package
yum install -y cronie

# Start and check cron service
systemctl start crond.service
systemctl status crond.service

# Edit root user's crontab
crontab -e


Add the following line inside the crontab:

*/5 * * * * echo hello > /tmp/cron_text

# Verify cron job is added
crontab -l

# Check if the file is created in /tmp after 5 minutes
ls -l /tmp/cron_text
cat /tmp/cron_text

✅ Verification

After ~5 minutes, the file /tmp/cron_text should exist.

Its contents should be:

hello