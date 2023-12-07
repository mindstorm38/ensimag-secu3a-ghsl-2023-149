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
RUN gcc -o main -lm -Wall -Wextra -Werror -fsanitize=address main.c
CMD ["./main"]
