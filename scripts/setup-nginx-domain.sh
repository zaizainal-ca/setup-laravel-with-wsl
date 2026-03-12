#!/bin/bash

# Ensure script is run with sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (using sudo)"
  exit 1
fi

if [ -z "$1" ]; then
  echo "Usage: sudo ./setup-nginx-domain.sh <project_name> <project_path>"
  echo "Example: sudo ./setup-nginx-domain.sh project.test /home/username/projects/project/public"
  exit 1
fi

if [ -z "$2" ]; then
  echo "Usage: sudo ./setup-nginx-domain.sh <project_name> <project_path>"
  echo "Example: sudo ./setup-nginx-domain.sh project.test /home/username/projects/project/public"
  exit 1
fi

DOMAIN=$1
PROJECT_PATH=$2

# Install nginx if it's not installed
if ! command -v nginx &> /dev/null; then
    echo "Nginx is not installed. Installing..."
    apt update
    apt install nginx -y
fi

# Ensure Nginx is running
service nginx start

# Create the Nginx site configuration
NGINX_CONF="/etc/nginx/sites-available/$DOMAIN"

cat > "$NGINX_CONF" <<EOF
server {
    listen 80;
    server_name $DOMAIN;
    root $PROJECT_PATH;

    index index.php index.html;

    location / {
        try_files \$uri \$uri/ /index.php?\$query_string;
    }

    location ~ \.php\$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.3-fpm.sock;
    }
}
EOF

echo "Created Nginx configuration at $NGINX_CONF"

# Enable the site
ln -s "$NGINX_CONF" "/etc/nginx/sites-enabled/"

# Test the Nginx configuration
nginx -t

if [ $? -eq 0 ]; then
    echo "Nginx configuration test passed. Restarting Nginx..."
    service nginx restart
else
    echo "Nginx configuration test failed. Please check the configuration manually."
    exit 1
fi

echo -e "\nSetup Complete for Nginx. \n"
echo -e "IMPORTANT: You must manually add the domain to your Windows hosts file."
echo -e "Edit: C:\Windows\System32\drivers\etc\hosts"
echo -e "Add the following line: "
echo -e "127.0.0.1 $DOMAIN"
