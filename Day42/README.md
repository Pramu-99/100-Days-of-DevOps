# Day 42 - Docker Network Creation & Overlap Handling (KodeKloud)

## Objective
Create a custom Docker bridge network and resolve subnet overlap issues.

---

## Step 1: SSH into the server
```bash
ssh banner@stapp03
```

---

## Step 2: Create a custom Docker network
```bash
docker network create --subnet 192.168.0.0/24 --ip-range 192.168.0.0/24 -d bridge official
```

---

## Step 3: Verify network creation
```bash
docker network list
```

---

## Step 4: Inspect the network
```bash
docker network inspect official
```

### Key Details:
- Subnet: 192.168.0.0/24
- Driver: bridge
- Scope: local

---

## Step 5: Attempt to create another network with same subnet
```bash
docker network create --subnet 192.168.0.0/24 --ip-range 192.168.0.0/24 -d bridge ecommerce
```

### Error:
```
Pool overlaps with other one on this address space
```

### Reason:
- Docker does not allow overlapping subnets between networks

---

## Step 6: Remove the existing network
```bash
docker network rm official
```

---

## Step 7: Create new network successfully
```bash
docker network create --subnet 192.168.0.0/24 --ip-range 192.168.0.0/24 -d bridge ecommerce
```

---

## Step 8: Verify new network
```bash
docker network list
```

---

## Step 9: Inspect the new network
```bash
docker network inspect ecommerce
```

---

## Key Learnings
- Docker networks must have unique subnets
- Overlapping IP ranges are not allowed
- Use `docker network inspect` to verify configuration
- Remove conflicting networks before reusing subnets

---

## Notes
- Always plan subnet ranges before creating networks
- Use different CIDR ranges (e.g., 192.168.1.0/24) to avoid conflicts

---

## Conclusion
Successfully handled Docker network creation and resolved subnet overlap issues.
