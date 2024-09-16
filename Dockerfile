# Basis-Image bestimmen
FROM node:14

# Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# Dateien kopieren
COPY package*.json ./

# Abhängigkeiten installieren
RUN npm install

# Dateien kopieren
COPY . .

# Port freigeben
EXPOSE 3000

# Startbefehl
CMD ["npm", "start"]