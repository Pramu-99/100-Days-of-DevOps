## Day 47 - Build and Run Python App in Docker 📌 Task

Build a Docker image for the Python application located in /python_app on stapp01. Run the container and ensure the app is accessible on port 8093.

---

🖥️ Commands Used

# Navigate to project directory
cd /python_app

# Build Docker image
docker build -t nautilus/python-app .

# Run container with port mapping
docker run -d --name pythonapp_nautilus -p 8093:5003 nautilus/python-app

# Verify running container
docker ps

# Check application response
curl http://localhost:8093/

---

📄 Dockerfile Used

# Importing python base image
FROM python:3.9-slim

# Setting working directory
WORKDIR /app

# Copying requirements.txt file
COPY src/requirements.txt .

# Installing dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copying source code
COPY src/ .

# Expose port 5003
EXPOSE 5003

# Running the application using CMD
CMD ["python","server.py"]

---

✅ Verification Output

- Container status:
  docker ps shows container running with port mapping 8093->5003.

- Application response:
  Welcome to xFusionCorp Industries!

---

⚠️ Notes

- The app runs internally on port 5003, mapped to host port 8093.
- Ensure firewall rules allow external access if needed.
- Application source code resides in /python_app/src.
- Dependencies are managed via requirements.txt.
