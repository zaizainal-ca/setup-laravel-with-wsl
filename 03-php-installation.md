# PHP Installation

Laravel projects require different PHP versions depending on the framework version.

To support multiple Laravel projects, install multiple PHP versions.

---

# Add PHP Repository

Ubuntu does not provide the latest PHP versions by default.

Add the PHP repository:

sudo add-apt-repository ppa:ondrej/php
sudo apt update

---

# Install PHP Versions

Install commonly used versions:

sudo apt install -y php8.3 php8.3-cli php8.3-fpm

sudo apt install -y php8.2 php8.2-cli php8.2-fpm

sudo apt install -y php8.1 php8.1-cli php8.1-fpm

---

# Verify PHP Installation

Run:

php -v

You should see something similar to:

PHP 8.x.x
