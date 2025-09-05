



Day 7 - Configure Passwordless SSH Access
📌 Task

Generate an SSH key pair on the jump host.

Copy the public key to all Nautilus App Servers (stapp01, stapp02, stapp03).

Verify that passwordless login works from the jump host to each App Server.

🖥️ Commands Used
# Check current user
whoami

# Generate SSH key pair (press Enter for defaults)
ssh-keygen -t rsa

# Copy key to App Server 1 (stapp01)
ssh-copy-id tony@172.16.238.10

# Copy key to App Server 2 (stapp02)
ssh-copy-id steve@172.16.238.11

# Copy key to App Server 3 (stapp03)
ssh-copy-id banner@172.16.238.12


⚠️ Note: Initially, login attempts failed due to a typo (bannner instead of banner). Corrected by using the proper username:

ssh-copy-id banner@stapp03.stratos.xfusioncorp.com

✅ Verification
# Test SSH to App Server 1
ssh tony@172.16.238.10

# Test SSH to App Server 2
ssh steve@172.16.238.11

# Test SSH to App Server 3
ssh banner@172.16.238.12


Each connection worked without prompting for a password, confirming passwordless SSH setup is successful.