Day 21 – Create a Bare Git Repository on CentOS Stream 9
📌 Task

Install Git on a CentOS Stream 9 server and create a bare Git repository at /opt/beta.git to be used as a central remote repository.

🖥️ Commands Used
# SSH into the server from jump host
ssh natasha@172.16.238.15

# Switch to root user
sudo su -

# Install Git using DNF
dnf install git -y

# Verify Git installation (optional)
git --version

# Create a bare Git repository
git init --bare /opt/beta.git

# Verify repository creation
ls -la /opt
ls -la /opt/beta.git

📂 Repository Details

Server Name: ststor01

Repository Type: Bare Git Repository

Repository Path: /opt/beta.git

📌 Notes

A bare repository does not have a working directory and is used for sharing code between multiple users.

Direct file edits inside a bare repository are not recommended.

The default branch name is master unless renamed.

SSH key-based authentication is recommended for production environments.