Day 2 – Clone Bare Git Repository on Server
📌 Task

Connect to the storage server via SSH, verify access, and clone an existing bare Git repository (/opt/beta.git) into the working directory /usr/src/kodekloudrepos.

🖥️ Commands Used
# SSH into the server from jump host
ssh natasha@172.16.238.15

# Accept SSH host key (first-time connection)
yes

# Switch to root user
sudo su

# Exit root shell
exit

# Navigate to /opt and verify bare repository
cd /opt
ls

# Navigate to working directory
cd /usr/src/kodekloudrepos

# Clone the bare repository
git clone /opt/beta.git

# Verify cloned repository
ls
ls -lart

📂 Directory Structure After Clone

Bare Repository Location: /opt/beta.git

Working Directory: /usr/src/kodekloudrepos

Cloned Repository Path: /usr/src/kodekloudrepos/beta

📌 Notes

The warning “You appear to have cloned an empty repository” is expected because the bare repository has no commits yet.

A bare repository does not contain a working tree; it is meant to be cloned by users.

The cloned directory (beta) will be used for adding files, committing changes, and pushing back to /opt/beta.git.

✅ Verification

Repository cloned successfully without errors.

Directory ownership correctly assigned to user natasha.

Ready for file creation, commits, and push operations.📌 Task

Connect to the storage server via SSH, verify access, and clone an existing bare Git repository (/opt/beta.git) into the working directory /usr/src/kodekloudrepos.

🖥️ Commands Used
# SSH into the server from jump host
ssh natasha@172.16.238.15

# Accept SSH host key (first-time connection)
yes

# Switch to root user
sudo su

# Exit root shell
exit

# Navigate to /opt and verify bare repository
cd /opt
ls

# Navigate to working directory
cd /usr/src/kodekloudrepos

# Clone the bare repository
git clone /opt/beta.git

# Verify cloned repository
ls
ls -lart

📂 Directory Structure After Clone

Bare Repository Location: /opt/beta.git

Working Directory: /usr/src/kodekloudrepos

Cloned Repository Path: /usr/src/kodekloudrepos/beta

📌 Notes

The warning “You appear to have cloned an empty repository” is expected because the bare repository has no commits yet.

A bare repository does not contain a working tree; it is meant to be cloned by users.

The cloned directory (beta) will be used for adding files, committing changes, and pushing back to /opt/beta.git.

✅ Verification

Repository cloned successfully without errors.

Directory ownership correctly assigned to user natasha.

Ready for file creation, commits, and push operations.