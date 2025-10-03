Day 9 - Install and Configure Apache Tomcat
📌 Task

Install Apache Tomcat 9 on stapp02.
Ensure the service is running and enabled at boot.
Verify that the default Tomcat homepage is accessible on port 8080.

🖥️ Commands Used

Install Tomcat and dependencies
sudo yum install -y tomcat

Start and enable Tomcat service
systemctl start tomcat
systemctl enable tomcat

Verify service status
systemctl status tomcat

(Optional) Add Tomcat bin directory to PATH
echo 'export PATH=$PATH:/usr/share/tomcat/bin' >> /etc/profile
source /etc/profile

Check Tomcat default page
curl http://localhost:8080

⚠️ Note:

Tomcat runs on port 8080 by default.
Firewall rules may need to be adjusted if external access is required.
WAR files can be deployed to /usr/share/tomcat/webapps/.

✅ Verification Output

Tomcat service is active (running):
Active: active (running) since Fri 2025-10-03 ...

Default Tomcat homepage is accessible via:
http://stapp02:8080
