# Usar una imagen base de Windows Server Core o Linux con Wine si estás usando Linux
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Crear un directorio de trabajo
WORKDIR /gophish

# Copiar todos los archivos de la aplicación al contenedor
COPY . .

# Exponer los puertos 3333 y 8080 (o cualquier otro que uses)
EXPOSE 3333
EXPOSE 8080

# Comando para ejecutar el archivo gophish.exe
CMD ["gophish.exe"]
