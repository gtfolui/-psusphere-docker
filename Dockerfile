# Use official Python image
FROM python:3.11-slim

# Prevent .pyc files and enable logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory inside container
WORKDIR /app

# Copy and install dependencies first (for caching)
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy all project files into the container
COPY . /app/

# Expose port 8000 for the Django server
EXPOSE 8000

# Run migrations then start the server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]