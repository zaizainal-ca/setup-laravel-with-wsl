# Troubleshooting Laravel Projects

Developers often face environment issues when switching between projects.

---

# Composer PHP Version Mismatch

Error example:

Your PHP version does not satisfy the requirement.

Solution:

Switch PHP version.

sudo update-alternatives --config php

or

asdf local php 8.1.27

---

# Dependency Conflicts

Solution:

rm composer.lock

rm -rf vendor

composer install

---

# Missing PHP Extensions

Example error:

ext-mbstring missing

Install extension:

sudo apt install php8.3-mbstring

---

# Permission Issues

Fix storage permissions:

chmod -R 775 storage

chmod -R 775 bootstrap/cache

---

# Node Errors

Clear node modules:

rm -rf node_modules

rm package-lock.json

npm install
