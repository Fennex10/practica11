# Dockerfile
# Usamos una imagen base de Python
FROM python:3.11-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos archivos de la app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Puerto en el que la app va a correr
EXPOSE 5000

# Comando para correr la app
CMD ["python", "app.py"]
