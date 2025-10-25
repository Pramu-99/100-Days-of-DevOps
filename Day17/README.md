Day 17: PostgreSQL Installation and Configuration

Objective:
To install and configure the PostgreSQL database server, create a new user and database, and verify access to the database.

Commands and Steps:

1. Connect to the target server using SSH:
   ssh peter@172.16.239.10

2. Switch to root user:
   sudo su -

3. Install PostgreSQL server and related packages:
   yum -y install postgresql-server postgresql-contrib

4. Initialize the PostgreSQL database:
   postgresql-setup initdb

5. Enable and start the PostgreSQL service:
   systemctl enable postgresql
   systemctl start postgresql
   systemctl status postgresql

6. Access PostgreSQL as the default ‘postgres’ user:
   sudo -u postgres psql

7. Create a new PostgreSQL user and database:
   CREATE USER kodekloud_joy WITH PASSWORD 'GyQkFRVNr3';
   CREATE DATABASE kodekloud_db6;
   GRANT ALL PRIVILEGES ON DATABASE "kodekloud_db6" TO kodekloud_joy;
   \q

8. Edit PostgreSQL configuration files to allow local connections:
   vi /var/lib/pgsql/data/postgresql.conf
   → Ensure the line reads:
     listen_addresses = 'localhost'
   vi /var/lib/pgsql/data/pg_hba.conf
   → Configure appropriate authentication methods.

9. Restart PostgreSQL service:
   systemctl restart postgresql
   systemctl status postgresql

10. Verify database connection using the created user:
    psql -U kodekloud_joy -d kodekloud_db6 -h 127.0.0.1 -W
    psql -U kodekloud_joy -d kodekloud_db6 -h localhost -W

Expected Output:
• PostgreSQL service status should show as “active (running)”.
• User ‘kodekloud_joy’ should successfully connect to the database ‘kodekloud_db6’.
• psql prompt should appear after successful authentication.

Verification:
Run the following inside PostgreSQL shell to confirm:
   \du  → Lists users and roles.
   \l   → Lists databases.
   \q   → Exit the PostgreSQL shell.

Conclusion:
PostgreSQL was successfully installed and configured. A new database ‘kodekloud_db6’ and user ‘kodekloud_joy’ were created with full privileges, and the user was able to log in successfully.
