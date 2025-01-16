
# Organizador de Archivos en Bash

Este proyecto es un **script en Bash** diseñado para organizar automáticamente los archivos de un directorio en subcarpetas basadas en su tipo (por ejemplo, imágenes, documentos, videos, etc.). Es compatible con **Linux** y **Windows** (usando Git Bash, WSL o Cygwin).

## 🚀 Características

- Organiza archivos en categorías específicas como:
  - **Fotos**: `.jpg`, `.jpeg`, `.png`, `.gif`
  - **Documentos**: `.pdf`, `.doc`, `.docx`, `.txt`
  - **Videos**: `.mp4`, `.avi`, `.mkv`
  - **Audios**: `.mp3`, `.wav`
  - **Comprimidos**: `.zip`, `.rar`, `.tar.gz`
  - **Otros**: Archivos que no coinciden con las categorías anteriores.
- Verifica automáticamente si las carpetas existen y las crea si es necesario.
- Organiza archivos del directorio actual o de una ruta específica proporcionada como argumento.
- Fácil de usar y personalizar para diferentes necesidades.

## 🛠️ Requisitos

- **Entorno compatible con Bash**:
  - Linux (cualquier distribución).
  - Windows con **Git Bash**, **WSL**, o **Cygwin**.

## 📦 Instalación

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tuusuario/organizador-archivos-bash.git
   cd organizador-archivos-bash
   ```
2. Asegúrate de que el script tiene permisos de ejecución:
   ```bash
   chmod +x organizador.sh
   ```

## ⚙️ Uso

1. Ejecuta el script en el directorio donde quieres organizar los archivos:
   ```bash
   ./organizador.sh
   ```
   Por defecto, organizará los archivos en el directorio actual.

2. También puedes especificar un directorio:
   ```bash
   ./organizador.sh "/ruta/al/directorio"
   ```

## ✨ Personalización

El script usa una estructura `declare -A` para definir las categorías y extensiones de archivo. Puedes agregar o modificar categorías según tus necesidades:

```bash
FOLDERS=( ["Fotos"]="*.jpg *.jpeg *.png *.gif"
          ["Documentos"]="*.pdf *.doc *.docx *.txt"
          ["Videos"]="*.mp4 *.avi *.mkv"
          ["Audios"]="*.mp3 *.wav"
          ["Comprimidos"]="*.zip *.rar *.tar.gz" )
```

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si tienes ideas para mejorar este script o encuentras algún error, no dudes en abrir un **issue** o enviar un **pull request**.

## 📜 Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
