# Dockerfile (renomme bien ton fichier en "Dockerfile" si besoin)
FROM python:3.9

# 1. Définir le répertoire de travail
WORKDIR /app

# 2. Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt .
COPY azure-vote .
RUN pip install --no-cache-dir -r requirements.txt

# 3. Copier tout le code dans le container
COPY . .

# 4. Lancer l'app
CMD ["python", "/app/main.py"]

EXPOSE 80