# asdf Version Manager

asdf is a version manager that allows developers to manage multiple versions of languages.

Benefits:

- automatic version switching
- per-project configuration
- support for many languages

---

# Install Dependencies

sudo apt install curl git -y

---

# Install asdf

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

---

# Add to Shell

echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc

echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc

source ~/.bashrc

---

# Verify Installation

asdf --version

---

# Install PHP Plugin

asdf plugin add php https://github.com/asdf-community/asdf-php.git

---

# Install PHP Versions

asdf install php 8.3.6

asdf install php 8.2.18

asdf install php 8.1.27

---

# Set Global Version

asdf global php 8.3.6

---

# Set Version Per Project

cd project-folder

asdf local php 8.1.27

This creates:

.tool-versions
