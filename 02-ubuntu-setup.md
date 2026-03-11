# Install Ubuntu

Open Microsoft Store.

Search for:

Ubuntu

Install the recommended version:

Ubuntu 22.04 LTS

---

# Launch Ubuntu

After installation, open Ubuntu from the start menu.

You will be asked to create:

- Linux username
- Linux password

---

# Update Ubuntu

Always update your system after installation.

Run:

sudo apt update
sudo apt upgrade -y

---

# Install Base Packages

Install essential development packages:

sudo apt install -y \
software-properties-common \
curl \
git \
unzip \
zip \
build-essential

Optional but useful:

sudo apt install -y libpng-dev
