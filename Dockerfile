# Usar una imagen base de Ubuntu
FROM ubuntu:latest

# Instalar Wine
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine32

# Crear un directorio de trabajo
WORKDIR /gophish

# Copiar todos los archivos de la aplicación al contenedor
COPY . .

# Exponer los puertos que usa Gophish
EXPOSE 3333
EXPOSE 8080

# Comando para ejecutar gophish.exe con Wine
CMD ["wine", "gophish.exe"]
