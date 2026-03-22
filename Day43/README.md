# Day 43 – Docker Container Deployment with Port Mapping (Nginx)

## Objective
Deploy an Nginx container, resolve container name conflicts, and expose the container service to the host using port mapping.

## Steps

### 1. Connect to Server
ssh steve@stapp02

### 2. Check Containers
docker ps -a

### 3. Pull Image
docker pull nginx:stable

### 4. Run Container
docker run -td --name news nginx:stable

### 5. Access Container
docker exec -it news /bin/bash

Optional Steps I Used:
apt update
apt install apache2 -y

exit

### 6. Stop Container
docker stop <container_id>

### 7. Error: Name Conflict
docker run -td -p 8082:80 --name news nginx:stable

Reason: Container name already exists.

### 8. Remove Old Container
docker rm <container_id>

### 9. Run with Port Mapping
docker run -td -p 8082:80 --name news nginx:stable

### 10. Verify
docker ps -a

### 11. Access Service
http://<server-ip>:8082

## Key Concepts
- Container names must be unique
- Port mapping: -p host_port:container_port
- Basic Docker lifecycle commands

## Conclusion
Successfully deployed and exposed an Nginx container using Docker with proper conflict resolution.
