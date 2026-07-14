# Swapped to Buster: Modern enough to build, old enough to be highly vulnerable
FROM python:3.9-slim-buster 

# CRITICAL VULNERABILITY: Running as root
USER root

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD ["python", "db_connect.py"]