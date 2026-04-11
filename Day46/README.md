# Day 46 - Docker Compose (MariaDB + PHP Apache)

## Objective
Deploy a multi-container application using Docker Compose including:
- MariaDB database
- PHP Apache web server

---

## Steps Performed

### 1. Connect to Server
```bash
ssh banner@stapp03
```

### 2. Navigate to Project Directory
```bash
cd /opt/dba
```

### 3. Create/Edit Docker Compose File
```bash
vi docker-compose.yml
sudo vi docker-compose.yml
```

### 4. Verify Docker Service Status
```bash
sudo systemctl status docker
```

Status: **Active (running)**

---

## 5. Start Docker Compose Application
```bash
sudo docker compose up -d
```

### Output Summary
- Images Pulled:
  - mariadb:latest
  - php:apache
- Network Created:
  - dba_default
- Containers Created:
  - mysql_blog
  - php_blog

---

## 6. Verify Application

### Test Using Curl
```bash
curl http://localhost:5004
```

### Output
```html
<html>
    <head>
        <title>Welcome to xFusionCorp Industries!</title>
    </head>

    <body>
        Welcome to xFusionCorp Industries!
    </body>
</html>
```

---

## Key Concepts

### Docker Compose
Used to define and run multi-container Docker applications.

### Services Used
- **MariaDB**: Database backend
- **PHP Apache**: Web server frontend

### Networking
- Automatic bridge network (`dba_default`) created
- Containers communicate internally

---

## Notes
- `version` attribute is deprecated in newer Docker Compose versions.
- Use `docker compose` instead of `docker-compose`.

---

## Conclusion
Successfully deployed a multi-container application using Docker Compose. Verified service availability via HTTP request.

---