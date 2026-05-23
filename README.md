# PSUSphere Docker Activity

## Run the app (for clients — no code needed)
1. Install Docker Desktop from docker.com
2. Copy the `for_client/docker-compose.yml` to a folder on your PC
3. Open terminal inside that folder and run:
   docker-compose up -d
4. Open your browser: http://localhost:8000

## First-time setup (create admin account)
docker-compose exec web python manage.py createsuperuser

## Stop the app
docker-compose down

## Rebuild from source (for developers)
docker-compose build
docker-compose up