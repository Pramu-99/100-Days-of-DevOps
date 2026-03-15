# Day 39 – Create a Docker Image from a Container (docker commit)

## Objective
Create a new Docker image from an existing running container using the `docker commit` command.

---

## Step 1: Connect to Application Server

From the jump host, connect to the application server.

ssh banner@stapp03

Accept the host authenticity prompt and enter the password when prompted.

---

## Step 2: Verify Running Containers

Check currently running containers.

docker ps

Example output:

CONTAINER ID   IMAGE     COMMAND       CREATED              STATUS              PORTS     NAMES
a9f603e89fbe   ubuntu    "/bin/bash"   About a minute ago   Up About a minute             ubuntu_latest

This confirms that the container ubuntu_latest is running.

---

## Step 3: Check docker commit Command Usage

Display help for the docker commit command.

docker commit --help

Command syntax:

docker commit [OPTIONS] CONTAINER [REPOSITORY[:TAG]]

This command creates a new image from a container's changes.

---

## Step 4: Create Image from Container

Create a new image named apps:nautilus from the running container ubuntu_latest.

docker commit ubuntu_latest apps:nautilus

Example output:

sha256:207559b7662f7fb121463a8e15288133eade55e56c60c57c08c9cc7af7dde37d

This indicates the new image was successfully created.

---

## Step 5: Verify the New Image

List available Docker images.

docker images

Example output:

REPOSITORY   TAG        IMAGE ID       CREATED         SIZE
apps         nautilus   207559b7662f   6 seconds ago   138MB
ubuntu       latest     bbdabce66f1b   4 weeks ago     78.1MB

The new image apps:nautilus is now available locally.

---

## Result

- Connected to stapp03 server
- Verified running container ubuntu_latest
- Created a new Docker image apps:nautilus
- Confirmed the image using docker images

---

## Summary

In this task we:

1. Connected to the application server using SSH
2. Verified the running container
3. Used docker commit to create an image from the container
4. Verified the new image in the Docker image list

This demonstrates how to create a custom Docker image from a running container.
