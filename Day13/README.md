### Task: Day 13 - IPTables Installation and Configuration

**Host:** `stapp01`  
**User:** `tony` (with `sudo` access)  
**Service:** `iptables` (firewall service)

---

### Issue

Need to install and configure IPTables to control access on custom port `5004`.

---

### Resolution

1. Installed IPTables services package:

   yum install -y iptables-services

2. Restarted and checked IPTables service status:

   systemctl restart iptables && systemctl status iptables

3. Allowed access to port `5004` from jump host (`172.16.238.14`):

   iptables -A INPUT -p tcp --destination-port 5004 -s 172.16.238.14 -j ACCEPT

4. Blocked access to port `5004` from all other sources:

   iptables -A INPUT -p tcp --destination-port 5004 -j DROP

5. Listed IPTables rules with line numbers:

   iptables -L --line-numbers

6. Replaced rule at line 5 to reject ICMP traffic:

   iptables -R INPUT 5 -p icmp -j REJECT

7. Verified updated rules:

   iptables -L -n

8. Saved IPTables configuration:

   service iptables save

9. Restarted IPTables service and confirmed status:

   systemctl restart iptables && systemctl status iptables

---

### Verification

* Port `5004` accessible only from jump host (`172.16.238.14`).  
* All other access attempts to port `5004` blocked.  
* ICMP traffic explicitly rejected.  
* Rules persisted after saving configuration.
