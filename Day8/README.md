



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