#!/bin/bash

# Directorio a organizar (puedes pasar como argumento)
TARGET_DIR=${1:-$(pwd)}

# Verifica si el directorio existe
if [[ ! -d "$TARGET_DIR" ]]; then
  echo "El directorio no existe: $TARGET_DIR"
  exit 1
fi

# Crear carpetas según tipo de archivo
declare -A FOLDERS
FOLDERS=( ["Fotos"]="*.jpg *.jpeg *.png *.gif"
          ["Documentos"]="*.pdf *.doc *.docx *.txt"
          ["Videos"]="*.mp4 *.avi *.mkv"
          ["Audios"]="*.mp3 *.wav"
          ["Comprimidos"]="*.zip *.rar *.tar.gz" )

echo "Organizando archivos en $TARGET_DIR..."

# Iterar sobre cada tipo de archivo
for folder in "${!FOLDERS[@]}"; do
  # Crear carpeta si no existe
  mkdir -p "$TARGET_DIR/$folder"

  # Mover archivos que coincidan con los patrones
  for pattern in ${FOLDERS[$folder]}; do
    find "$TARGET_DIR" -maxdepth 1 -type f -iname "$pattern" -exec mv {} "$TARGET_DIR/$folder/" \;
  done
done

# Mover archivos restantes a "Otros"
mkdir -p "$TARGET_DIR/Otros"
find "$TARGET_DIR" -maxdepth 1 -type f -exec mv {} "$TARGET_DIR/Otros/" \;

echo "Organización completada."
