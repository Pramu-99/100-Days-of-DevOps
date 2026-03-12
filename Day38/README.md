# Day 38 -- Pull and Tag a Docker Image

## Objective

Connect to the application server and pull a Docker image from Docker
Hub, then create a new tag for that image.

------------------------------------------------------------------------

## Step 1: Connect to Application Server

Login from the jump host to the application server.

ssh steve@stapp02

Enter the password when prompted.

------------------------------------------------------------------------

## Step 2: Check Existing Containers

Verify whether any containers are running or available.

docker ps -a

Output showed no containers present on the server.

To check only running containers:

docker ps

Again, no running containers were found.

------------------------------------------------------------------------

## Step 3: Pull Docker Image

Download the BusyBox image with the musl tag from Docker Hub.

docker pull busybox:musl

Example output:

musl: Pulling from library/busybox Digest:
sha256:19b646668802469d968a05342a601e78da4322a414a7c09b1c9ee25165042138
Status: Downloaded newer image for busybox:musl

This confirms that the BusyBox image was successfully downloaded.

------------------------------------------------------------------------

## Step 4: Tag the Docker Image

Create a new tag called news for the BusyBox image.

docker tag busybox:musl busybox:news

Explanation:

-   docker tag → Creates a new tag for an existing image
-   busybox:musl → Source image
-   busybox:news → New tag name

This does not duplicate the image but simply creates another reference
to the same image ID.

------------------------------------------------------------------------

## Step 5: Verify Images

List all Docker images on the system.

docker images

Example output:

REPOSITORY TAG IMAGE ID CREATED SIZE busybox musl 0188a8de47ca 17 months
ago 1.51MB busybox news 0188a8de47ca 17 months ago 1.51MB

Both tags point to the same image ID.

------------------------------------------------------------------------

## Result

-   Successfully connected to stapp02
-   Pulled the busybox:musl image from Docker Hub
-   Created a new tag busybox:news
-   Verified both tags using docker images

------------------------------------------------------------------------

## Summary

In this task we:

1.  Logged into the application server
2.  Checked existing Docker containers
3.  Pulled the BusyBox image
4.  Created a new tag for the image
5.  Verified the image tags

This demonstrates how to pull and tag Docker images for versioning or
custom naming.
