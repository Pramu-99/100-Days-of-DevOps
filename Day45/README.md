# Day 45 – Docker Image Build, Port Conflict Handling, and Container Deployment

## Objective
Build a custom Apache HTTPD Docker image with SSL configuration, resolve port conflicts, and deploy a container with proper port mapping.

---

## Step 1: Connect to Server
ssh banner@stapp03

---

## Step 2: Navigate to Working Directory
cd /opt/docker

Verify files:
- Dockerfile
- certs/
- html/

---

## Step 3: Build Docker Image

### Incorrect Attempts
docker build -t Dockerfile .
- Error: repository name must be lowercase

### Correct Command
docker build -t httpd_image .

- Image built successfully using Dockerfile.

---

## Step 4: Verify Image
docker images

- Confirm `httpd_image` is available.

---

## Step 5: Run Container (Initial Attempt)
docker run --name httpd -p 8080:8080 -d httpd_image

### Issue:
- Port 8080 already in use.

---

## Step 6: Identify Port Usage
sudo lsof -i :8080

- Found process using port 8080.

### Kill Process
sudo kill <PID>

---

## Step 7: Container Name Conflict

### Error:
Container name already exists.

### Fix:
docker rm httpd

---

## Step 8: Retry Container Run

### Still Port Issue:
docker run --name httpd -p 8080:8080 -d httpd_image

- Port still occupied.

---

## Step 9: Use Alternative Port
docker run --name httpd -p 9090:80 -d httpd_image

- Container started successfully.

---

## Step 10: Verify Container
docker ps -a

- Confirm container is running:
0.0.0.0:9090->80/tcp

---

## Step 11: Test Application

### HTTPS Attempt:
curl https://localhost:9090
- SSL error

### HTTP Attempt:
curl http://localhost:9090
- Connection reset (configuration mismatch)

---

## Step 12: Force Remove and Redeploy
docker rm -f httpd
docker run --name httpd -p 9090:80 -d httpd_image

---

## Key Concepts

### Docker Image Build
docker build -t <image_name> .

### Naming Rules
- Image names must be lowercase.

### Port Conflicts
- Only one service can bind to a port.

### Container Name Conflicts
- Must remove existing container before reuse.

### Port Mapping
- Format: host_port:container_port
- Example: 9090:80

---

## Conclusion
Successfully built a custom HTTPD image, resolved conflicts, and deployed the container using an alternative port.
