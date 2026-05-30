# PSUSphere Docker Activity

PSUSphere is a web-based Student Organization Management System built with Django. It allows administrators to manage students, colleges, programs, and student organizations through a clean dashboard interface. This repository contains the Dockerized version of the application, making it easy to run locally without setting up a Python environment manually.

## Features

- Manage students, colleges, programs, and organizations
- Admin dashboard with full CRUD support
- User authentication (login/logout)
- Runs fully inside Docker — no local Python setup needed

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed on your machine
- A terminal or command prompt

---

## Run the app (for clients — no code needed)

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Copy the `for_client/docker-compose.yml` file to any folder on your PC
3. Open a terminal inside that folder and run:
   ```bash
   docker-compose up -d
   ```
4. Open your browser and go to: [http://localhost:8000](http://localhost:8000)

---

## First-time setup (create admin account)

After starting the app, run this command to create a superuser (admin) account:

```bash
docker-compose exec web python manage.py createsuperuser
```

Follow the prompts to set a username, email, and password. Then log in at [http://localhost:8000/admin](http://localhost:8000/admin).

---

## Stop the app

```bash
docker-compose down
```

---

## Rebuild from source (for developers)

If you made changes to the source code and need to rebuild the Docker image:

```bash
docker-compose build
docker-compose up
```

---

## Authors

- Pia Luisa G. Tolon
- Michael Alfred J. Paalan