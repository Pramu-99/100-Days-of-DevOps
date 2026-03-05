# Day 34 -- Docker Installation on CentOS Stream 9

## Objective

Install Docker Engine on a CentOS Stream 9 server and prepare the system
for container usage.

------------------------------------------------------------------------

## 1. SSH Login

Connect to the remote server from the jump host.

``` bash
ssh steve@172.16.238.11
```

Accept the host authenticity prompt and enter the password.

------------------------------------------------------------------------

## 2. Switch to Root User

``` bash
sudo su -
```

This provides administrative privileges required for installation.

------------------------------------------------------------------------

## 3. Clean Yum Cache

``` bash
yum clean all
```

Purpose: - Removes cached package metadata - Ensures fresh repository
data during installation

------------------------------------------------------------------------

## 4. Install Required Dependencies

``` bash
yum install -y yum-utils device-mapper-persistent-data lvm2
```

Packages installed:

-   **yum-utils** -- provides `yum-config-manager`
-   **device-mapper-persistent-data** -- required for Docker storage
-   **lvm2** -- Logical Volume Manager support

------------------------------------------------------------------------

## 5. Add Docker Repository

``` bash
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

Purpose: - Adds the official Docker CE repository - Allows installation
of the latest Docker packages

------------------------------------------------------------------------

## 6. Install Docker Engine

``` bash
yum install -y docker-ce docker-ce-cli containerd.io
```

Main components:

  Package         Description
  --------------- -------------------------------
  docker-ce       Docker Engine
  docker-ce-cli   Docker command line interface
  containerd.io   Container runtime

Additional plugins installed:

-   docker-buildx-plugin
-   docker-compose-plugin
-   docker-ce-rootless-extras

------------------------------------------------------------------------

## 7. Result

Docker packages successfully installed on:

Server: **stapp02**\
OS: **CentOS Stream 9**

Installed components:

-   Docker Engine
-   Docker CLI
-   Container Runtime (containerd)
-   Docker Compose Plugin
-   Docker Buildx

------------------------------------------------------------------------

## Next Recommended Steps

Start and enable Docker service:

``` bash
systemctl start docker
systemctl enable docker
```

Verify installation:

``` bash
docker --version
docker run hello-world
```

------------------------------------------------------------------------

## Summary

This task demonstrated:

-   Installing prerequisite packages
-   Adding Docker repository
-   Installing Docker Engine and related components
-   Preparing a Linux server for containerized applications
