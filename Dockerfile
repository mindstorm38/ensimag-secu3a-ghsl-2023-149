# Dockerfile
FROM debian:latest
#Dependances nécessaires
RUN apt-get update && apt-get install -y \
    build-essential \
    git
# Copier les fichiers de code dans le conteneur
WORKDIR /app
COPY . .
# Compiler et exécuter
RUN make
CMD ["./main"]
