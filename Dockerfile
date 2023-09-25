# Dockerfile for Django app 

FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install poetry
RUN pip install poetry

# Set work directory
WORKDIR /

# Copy project file
COPY pyproject.toml .

# Install dependencies
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --only main

# Copy project
COPY <APP_NAME> .

# Collect static files
# Run database migrations at runtime
# Run Django app using Gunicorn
CMD python manage.py collectstatic --no-input && \
    python manage.py migrate && \ 
    gunicorn rsvp_minimal.wsgi -b 0.0.0.0:8000