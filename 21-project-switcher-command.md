# Laravel Project Switcher Command

Developers working with many projects can create shortcuts.

Example command:

work crm

work api

work legacy

---

# Create Script

nano ~/work

---

# Example Script

#!/bin/bash

PROJECT_ROOT="$HOME/projects"

case "$1" in

crm)
cd "$PROJECT_ROOT/laravel-apps/crm"
;;

api)
cd "$PROJECT_ROOT/laravel-apis/payment-api"
;;

legacy)
cd "$PROJECT_ROOT/legacy-projects/laravel8-crm"
;;

*)
echo "Available projects:"
echo "work crm"
echo "work api"
echo "work legacy"
;;

esac

exec $SHELL

---

# Make Executable

chmod +x ~/work

sudo mv ~/work /usr/local/bin/work

---

# Usage

work crm

work api

work legacy

---

# Benefit

Fast project navigation  
Automatic environment switching with asdf
