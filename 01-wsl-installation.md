# Install WSL

WSL (Windows Subsystem for Linux) allows developers to run a Linux environment directly inside Windows.

Laravel development is much easier inside Linux because many PHP tools are designed for Unix environments.

---

# Install WSL

Open PowerShell as Administrator and run:

wsl --install

Restart your computer if prompted.

After restarting, open the terminal and create your Linux username and password.

---

# Verify Installation

Run:

wsl --list --verbose

You should see something similar to:

Ubuntu    Running    Version 2

---

# Access WSL Files From Windows

WSL files can be accessed using:

\\wsl$

Example path:

\\wsl$\Ubuntu\home\username

---

# Why Use WSL for Laravel

Benefits:

- Linux environment on Windows
- Better performance for PHP tools
- Compatibility with Linux servers
- Avoid Windows filesystem issues

