# Day 44 – Docker Compose Deployment (HTTPD Service)

## Objective
Deploy an Apache HTTPD container using Docker Compose and expose it via port mapping.

---

## Step 1: Connect to Target Server
ssh banner@stapp03

---

## Step 2: Switch to Root User
sudo -i

---

## Step 3: Navigate to Docker Directory
cd /opt/docker

---

## Step 4: Create Docker Compose File
vi docker-compose.yml

### Example Configuration:
```
services:
  httpd:
    image: httpd:latest
    container_name: httpd
    ports:
      - "3004:80"
```

> Note: The `version` field is deprecated and can be omitted.

---

## Step 5: Deploy Containers
docker compose up -d

- Pulls the required image (`httpd:latest`)
- Creates network (default)
- Starts container in detached mode

---

## Step 6: Verify Running Container
docker ps

Output shows:
0.0.0.0:3004->80/tcp

---

## Step 7: Access Application
Open browser or use curl:
http://<server-ip>:3004

---

## Key Concepts

### 1. Docker Compose
- Tool to define and run multi-container Docker applications using YAML.

### 2. Port Mapping
- Syntax: host_port:container_port
- Example: 3004:80 maps host port 3004 to container port 80.

### 3. Detached Mode
- `-d` runs containers in background.

---

## Conclusion
Successfully deployed an Apache HTTPD container using Docker Compose and exposed it on port 3004 for external access.
