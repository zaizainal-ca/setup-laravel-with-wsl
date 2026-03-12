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

# Database and User Management

First, log into the MySQL console as root:

```bash
sudo mysql -u root -p
```

### Create a Database

```sql
CREATE DATABASE laravel_app;
```

### Create a New User

```sql
CREATE USER 'laravel_user'@'localhost' IDENTIFIED BY 'your_password';
```
*(Note: Use `%` instead of `localhost` if the user needs to connect remotely)*

### Grant Privileges to a User

To grant all privileges on a specific database to a new or existing user:

```sql
GRANT ALL PRIVILEGES ON laravel_app.* TO 'laravel_user'@'localhost';
```

After updating privileges, apply the changes:

```sql
FLUSH PRIVILEGES;
```

### Assign Existing User to Existing Database

If you already have a database and a user created, you can assign the user to the database with all privileges:

```sql
GRANT ALL PRIVILEGES ON existing_database.* TO 'existing_user'@'localhost';
```

Then apply the changes:

```sql
FLUSH PRIVILEGES;
```

### Helpful Commands

Show all databases:
```sql
SHOW DATABASES;
```

Show all users:
```sql
SELECT User, Host FROM mysql.user;
```

Exit the MySQL console:
```sql
exit;
```

---

# Alternative

Some developers prefer using MySQL from Windows tools like:

Laragon

In this case Laravel can connect using:

DB_HOST=127.0.0.1
