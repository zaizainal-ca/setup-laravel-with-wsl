# PHP Extensions for Laravel

Laravel requires several PHP extensions to function properly.

Install the most common extensions.

---

# Install Extensions for PHP 8.3

sudo apt install -y \
php8.3-mysql \
php8.3-xml \
php8.3-mbstring \
php8.3-curl \
php8.3-zip \
php8.3-bcmath \
php8.3-gd \
php8.3-intl

---

# Install Extensions for PHP 8.1

sudo apt install \
php8.1-mysql \
php8.1-xml \
php8.1-mbstring \
php8.1-curl \
php8.1-zip

---

# Check Installed Extensions

Run:

php -m

---

# Common Missing Extensions

During composer installation you may see errors like:

ext-mbstring missing  
ext-intl missing  
ext-zip missing

Install them using apt.

Example:

sudo apt install php8.3-mbstring

