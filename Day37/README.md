# Day 37 -- Copy File into Docker Container

## Objective

Connect to the application server and copy a file from the host system
into a running Docker container.

------------------------------------------------------------------------

## Step 1: Connect to Application Server

Login from the jump host to the application server.

ssh banner@stapp03

Accept the host authenticity prompt and enter the password.

------------------------------------------------------------------------

## Step 2: Verify Running Containers

Check currently running Docker containers.

docker ps

Example output:

CONTAINER ID IMAGE COMMAND CREATED STATUS PORTS NAMES 2bd1a9749a9b
ubuntu "/bin/bash" About a minute ago Up About a minute ubuntu_latest

This confirms that the container **ubuntu_latest** is running.

------------------------------------------------------------------------

## Step 3: Copy File into Container

Copy the file `nautilus.txt.gpg` from the host `/tmp` directory into the
container's `/opt` directory.

docker cp /tmp/nautilus.txt.gpg ubuntu_latest:/opt/

Explanation:

-   docker cp → Copies files between host and container
-   /tmp/nautilus.txt.gpg → Source file on host machine
-   ubuntu_latest → Target container name
-   /opt/ → Destination directory inside the container

------------------------------------------------------------------------

## Step 4: Confirmation

Successful output example:

Successfully copied 2.05kB to ubuntu_latest:/opt/

This confirms that the file was successfully copied into the container.

------------------------------------------------------------------------

## Result

-   Connected to **stapp03** server
-   Verified running Docker container **ubuntu_latest**
-   Copied encrypted file **nautilus.txt.gpg** into `/opt/` directory
    inside the container

------------------------------------------------------------------------

## Summary

In this task we:

1.  Connected to the application server using SSH
2.  Verified the running Docker container
3.  Used the docker cp command to transfer a file
4.  Successfully placed the file inside the container filesystem

This demonstrates how to transfer files between a host system and a
Docker container.
