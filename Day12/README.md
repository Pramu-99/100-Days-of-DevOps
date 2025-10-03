## Day 12 - Troubleshooting Apache Not Reachable on Custom Port (5004)

📌 **Task**

* Investigate why Apache web service on `stapp01` was not reachable on port `5004`.  
* Ensure Apache is accessible from the jump host using:  
curl http://stapp01:5004

---

🖥️ **Commands Used**

1. **SSH into App Server 1**

ssh tony@stapp01

2. **Check Apache Status**

sudo systemctl status httpd

* Apache was not running.  

3. **Start Apache**

sudo systemctl start httpd

* Output revealed another process (`sendm`, PID 451) was using port 5004:  
(98)Address already in use: AH00072: make_sock: could not bind to address 0.0.0.0:5004

4. **Terminate the Conflicting Process**

sudo kill 451

5. **Restart Apache and Confirm Listening on Port 5004**

sudo systemctl start httpd
sudo netstat -tulnp | grep 5004

* Confirmed Apache is now listening on 0.0.0.0:5004.  

6. **Firewall Troubleshooting**

* `firewall-cmd` not available, checked iptables:  
sudo iptables -L -n

* Default policy rejected all traffic except SSH (port 22).  

7. **Allow Port 5004 via IPTables**

sudo iptables -I INPUT -p tcp --dport 5004 -j ACCEPT
sudo service iptables save
sudo service iptables restart
sudo iptables -L -n

* Verified the rule is applied successfully.  

8. **Final Verification from Jump Host**

curl http://stapp01:5004

* Success! Apache responded with valid HTML output.
