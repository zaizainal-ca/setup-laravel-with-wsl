# Switching PHP Versions

When working with multiple Laravel projects, you may need to switch PHP versions.

Laravel 12 requires PHP 8.2+, while Laravel 8 may require PHP 8.0 or 8.1.

---

# Switch PHP Using update-alternatives

Run:

sudo update-alternatives --config php

Example output:

Selection    Path
---------------------------------
0            /usr/bin/php8.3
1            /usr/bin/php8.2
2            /usr/bin/php8.1

Choose the desired version.

---

# Verify PHP Version

Run:

php -v

---

# Example Use Case

Project A:

Laravel 12

Requires:

PHP 8.2+

Project B:

Laravel 8

Requires:

PHP 8.1

Switch PHP before running composer install.


