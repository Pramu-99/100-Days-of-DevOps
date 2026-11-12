## Day 48 - Create and Run Pod in Kubernetes 📌 Task

Create a Pod definition for an httpd container and apply it on the cluster. Verify that the Pod is running and accessible.

---

🖥️ Commands Used

# Create pod.yaml using heredoc
cat <<EOF > pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-httpd
  labels:
    app: httpd_app
spec:
  containers:
  - name: httpd-container
    image: httpd:latest
EOF

# Apply Pod definition
kubectl apply -f pod.yaml

# Verify Pod status
kubectl get pod pod-httpd -o wide

---

📄 pod.yaml File

apiVersion: v1
kind: Pod
metadata:
  name: pod-httpd
  labels:
    app: httpd_app
spec:
  containers:
  - name: httpd-container
    image: httpd:latest

---

✅ Verification Output

- Pod created successfully:
  pod/pod-httpd created

- Pod status:
  NAME        READY   STATUS    RESTARTS   AGE   IP          NODE        NOMINATED NODE   READINESS GATES
  pod-httpd   1/1     Running   0          35s   10.22.0.9   jump-host   <none>           <none>

---

⚠️ Notes

- Pod runs the latest httpd image.
- Labels applied: `app: httpd_app`.
- Pod is scheduled on node `jump-host` with IP `10.22.0.9`.
- Use `kubectl logs pod-httpd` to check container logs.
