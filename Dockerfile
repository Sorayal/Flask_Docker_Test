# Baseimage
FROM python:3.7-slim

# Arbeitsverzeichnis
WORKDIR /app

# Kopieren des aktuellen Verzeichnisses ins Arbeitsverzeichnis
ADD . /app

# Shell Befehl zum Installieren der Requirements
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Port 80 veröffentlichen
EXPOSE 80

# App ausführen
CMD ["python", "app.py"]