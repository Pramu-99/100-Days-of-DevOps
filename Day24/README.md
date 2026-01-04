Day 24 - Create and Work With Git Branch for Ecommerce Project

📌 Task

Access the ststor01 storage server

Switch to the ecommerce repository directory

Check existing branches

Switch to the master branch

Create a new branch named xfusioncorp_ecommerce

Verify branch creation and current branch status

🖥️ Commands Used
SSH into target server
ssh natasha@172.16.238.15


Accept host key and authenticate with password.

Switch to root user
sudo su -

Navigate to ecommerce repository
cd /usr/src/kodekloudrepos/ecommerce

Check existing git branches
git branch -v


Branches observed:

master

kodekloud_ecommerce

Switch to master branch
git checkout master

Create new branch xfusioncorp_ecommerce
git checkout -b xfusioncorp_ecommerce


This creates and switches to the new branch.

Verify branch creation
git branch -v


Expected output included:

master

kodekloud_ecommerce

xfusioncorp_ecommerce ← current branch *

⚠️ Note

Command git checkout -v is invalid because -v is not a valid checkout option

Correct way to view branch details is:

git branch -v


✅ Verification Output

Current active branch:

xfusioncorp_ecommerce


Base commit:

e967bda initial commit


Repository successfully prepared with new branch.