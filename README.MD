# 📦 WordPress con SQLite
Guía rápida para construir y ejecutar un contenedor de WordPress que utiliza SQLite como base de datos.

## ✅ 1. Construir la imagen
Desde el directorio donde tengas tu Dockerfile, ejecutá:

```bash
docker build -t wpsqlite .
```

Esto crea una imagen llamada wpsqlite con tu configuración personalizada.

## 🚀 2. Ejecutar el contenedor
```bash
docker run -d \
  -p 8080:80 \
  -v /ruta/completa/wordpress:/var/www/html \
  --name nombreContenedor \
  wpsqlite
```

### 📌 Detalles:

`-p 8080:80` → expone el sitio en `http://localhost:8080`

`-v /ruta/completa/wordpress:/var/www/html` → vincula una carpeta local para trabajar con los archivos directamente

`--name nombreContenedor` → le asigna un nombre al contenedor (por ejemplo, observatorio)

## 🛠️ 3. Ver el sitio en el navegador
Abre: [http://localhost:8080](http://localhost:8080)