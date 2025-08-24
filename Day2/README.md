# Day 2 - Create User with Expiry Date

## 📌 Task
- Connect to the server via SSH.
- Verify if user `john` exists.
- If not, create the user `john` with an expiry date set to **2024-01-28**.

---

## 🖥️ Commands Used
```bash
# Check if user exists
id john

# Create user with expiry date
sudo useradd -e 2024-01-28 john

# Verify user creation
id john

# Check expiry details
sudo chage -l john




## Appendix

Any additional information goes here


# Day 2 - Create User with Expiry Date

## 📌 Task
- Connect to the server via SSH.
- Verify if user `john` exists.
- If not, create the user `john` with an expiry date set to **2024-01-28**.

---

## 🖥️ Commands Used
```bash
# Check if user exists
id john

# Create user with expiry date
sudo useradd -e 2024-01-28 john

# Verify user creation
id john

# Check expiry details
sudo chage -l john



