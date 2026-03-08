# Day 36 -- Run Nginx Container Using Docker

## Objective

Connect to the application server and verify Docker installation. Then
deploy an **Nginx container** using the `nginx:alpine` image.

------------------------------------------------------------------------

## Step 1: Connect to Application Server

Login from the jump host to the application server.

``` bash
ssh tony@stapp01
```

When prompted, accept the host key and enter the password.

------------------------------------------------------------------------

## Step 2: Switch to Root User

Gain administrative privileges.

``` bash
sudo su -
```

------------------------------------------------------------------------

## Step 3: Verify Docker Installation

Check Docker version.

``` bash
docker -v
```

Example output:

Docker version 26.1.3, build b72abbb

------------------------------------------------------------------------

## Step 4: Verify Docker Service Status

Check whether the Docker service is running.

``` bash
systemctl status docker
```

Important details:

-   Service: docker.service
-   Status: active (running)
-   Docker daemon process: dockerd

This confirms Docker Engine is running correctly.

------------------------------------------------------------------------

## Step 5: Exit Root Session

``` bash
exit
```

Return to the normal user session.

------------------------------------------------------------------------

## Step 6: Run Nginx Container

Create and start an Nginx container in detached mode.

``` bash
docker run -d --name nginx_1 nginx:alpine
```

Explanation:

-   docker run → creates and runs a container
-   -d → runs container in background
-   --name nginx_1 → assigns a custom container name
-   nginx:alpine → lightweight Nginx image based on Alpine Linux

If the image is not available locally, Docker automatically pulls it
from Docker Hub.

------------------------------------------------------------------------

## Step 7: Verify Running Containers

List all containers.

``` bash
docker ps -a
```

Example output:

CONTAINER ID IMAGE COMMAND STATUS PORTS NAMES b9e069a47b04 nginx:alpine
"/docker-entrypoint..." Up 10 seconds 80/tcp nginx_1

This confirms that the Nginx container is successfully running.

------------------------------------------------------------------------

## Result

-   Docker verified on stapp01
-   Nginx image pulled from Docker Hub
-   Container nginx_1 created and running
-   Web server running inside Docker container

------------------------------------------------------------------------

## Summary

In this task we:

1.  Connected to the application server via SSH
2.  Verified Docker installation and service status
3.  Pulled the Nginx Alpine image
4.  Created and started a Docker container
5.  Verified the container using docker ps -a

This demonstrates how to deploy a containerized web server using Docker.
