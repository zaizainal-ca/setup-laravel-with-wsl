# MySQL Installation

Laravel commonly uses MySQL or MariaDB as the database.

---

# Install MySQL

sudo apt install mysql-server -y

---

# Start MySQL

sudo service mysql start

---

# Secure MySQL Installation

sudo mysql_secure_installation

Follow the prompts to:

- set root password
- remove anonymous users
- disable remote root login
- remove test database

---

# Verify Installation

mysql --version

---

# Alternative

Some developers prefer using MySQL from Windows tools like:

Laragon

In this case Laravel can connect using:

DB_HOST=127.0.0.1
