# Introducción a Bash Scripting
 
## ¿Qué es un script?
 
Un script es un archivo de texto que contiene comandos de la terminal, escritos uno por línea. En lugar de escribir cada comando manualmente, los agrupas en un archivo y los ejecutas todos juntos.
 
```bash
# Sin script: haces esto manualmente
mkdir nuevo_proyecto
cd nuevo_proyecto
touch README.md index.html style.css
echo "# Mi Proyecto" > README.md
 
# Con script: lo ejecutas todo en un comando
./crear_proyecto.sh
```
 
---

## Tu primer script
 
### Paso 1: Crear el archivo
 
```bash
$ nano holaMundo.sh
```
 
### Paso 2: Escribir el contenido
 
```bash
#!/bin/bash
# Este es mi primer script de Bash
 
echo "¡Hola, mundo!"
echo "Hoy es: $(date)"
echo "Estoy en: $(pwd)"
```
 
### Paso 3: Guardar y salir
 
En nano: `Ctrl + O` para guardar, `Ctrl + X` para salir.

### Paso 4: Dar permisos de ejecución
 
```bash
$ chmod +x holaMundo.sh
```
 
### Paso 5: Ejecutarlo
 
```bash
$ ./holaMundo.sh
¡Hola, mundo!
Hoy es: Sun May  3 10:00:00 CST 2026
Estoy en: /home/usuario
```
 
---
 
## La línea shebang: `#!/bin/bash`
 
La primera línea de todo script debe ser el **shebang**:
 
```bash
#!/bin/bash
```
 
¿Por qué?
- El `#!` le dice al sistema operativo que lo que sigue es el intérprete a usar
- `/bin/bash` es la ruta de Bash
- Sin esta línea, el sistema no sabe cómo ejecutar el archivo

## Comentarios
 
En Bash, todo lo que sigue a `#` en una línea es un comentario:

```bash
#!/bin/bash
# Este es un comentario de línea completa
 
echo "algo"    # Este comentario va al final de una línea
 
# Los comentarios no se ejecutan
# Son para explicar el código
```

Usa comentarios para:
- Explicar qué hace una sección del script
- Documentar el propósito del script al inicio
- Dejar notas para tu yo futuro

---

## Formas de ejecutar un script
 
### Con `./` (la más común)
 
```bash
$ ./script.sh
```
 
Requiere que el archivo tenga permiso de ejecución (`chmod +x`).
 
### Con `bash` explícito
 
```bash
$ bash script.sh
```
 
No requiere `chmod +x`, pero tampoco respeta el shebang.

### En esta carpeta encontrarás más acerca de Bash Script