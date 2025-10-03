Day 9 - Install and Configure Apache Tomcat
📌 Task

- Install Apache Tomcat 9 on stapp02.
- Ensure the service is running and enabled at boot.
- Verify that the default Tomcat homepage is accessible on port 8080.

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

- Tomcat runs on port 8080 by default.
- Firewall rules may need to be adjusted if external access is required.
- WAR files can be deployed to /usr/share/tomcat/webapps/.

✅ Verification Output

Tomcat service is active (running):
Active: active (running) since Fri 2025-10-03 ...

Default Tomcat homepage is accessible via:
http://stapp02:8080
Day 8 - Install and Configure Ansible
📌 Task

Install Ansible 4.8.0 on the jump host using pip3.

Ensure proper PATH configuration so Ansible is globally accessible.

Verify Ansible installation and version.

🖥️ Commands Used
# Install Ansible version 4.8.0
sudo pip3 install ansible==4.8.0


⚠️ Note: Installing with sudo may show a warning about running pip as root.
Best practice is to use a virtual environment, but for lab purposes, system-wide install is acceptable.

# Add Ansible path to environment variables
echo 'export PATH=$PATH:/usr/local/bin' | sudo tee -a /etc/profile

# Reload profile so changes take effect
source /etc/profile

# Verify Ansible installation
ansible --version

✅ Verification Output
ansible [core 2.11.12] 
  config file = None
  ansible python module location = /usr/local/lib/python3.9/site-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 3.9.18
  jinja version = 3.1.6
  libyaml = True