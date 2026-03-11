# Standard Laravel Workflow

Typical steps when starting a project.

---

# Step 1

Navigate to project directory:

cd ~/projects

---

# Step 2

Clone repository:

git clone REPOSITORY_URL

---

# Step 3

Enter project:

cd project

---

# Step 4

Install dependencies:

composer install

---

# Step 5

Setup environment:

cp .env.example .env

php artisan key:generate

---

# Step 6

Install frontend:

npm install

npm run dev

---

# Step 7

Run migrations:

php artisan migrate

---

# Step 8

Run application:

php artisan serve
