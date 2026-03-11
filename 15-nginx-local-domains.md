# nginx Local Domains

Instead of using:

http://localhost:8000

You can use:

http://project.test

---

# Install nginx

sudo apt install nginx -y

---

# Start nginx

sudo service nginx start

---

# Create Site Configuration

cd /etc/nginx/sites-available

sudo nano project.test

Example config:

server {

listen 80;

server_name project.test;

root /home/username/projects/project/public;

index index.php index.html;

location / {
try_files $uri $uri/ /index.php?$query_string;
}

location ~ \.php$ {
include snippets/fastcgi-php.conf;
fastcgi_pass unix:/run/php/php8.3-fpm.sock;
}

}

---

# Enable Site

sudo ln -s /etc/nginx/sites-available/project.test /etc/nginx/sites-enabled/

sudo nginx -t

sudo service nginx restart

---

# Add Hosts Entry

Edit Windows file:

C:\Windows\System32\drivers\etc\hosts

Add:

127.0.0.1 project.test
