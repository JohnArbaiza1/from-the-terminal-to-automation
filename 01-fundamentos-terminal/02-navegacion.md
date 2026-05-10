# Navegación en la Terminal
 
## El sistema de archivos de Linux

En Linux, todos los archivos y carpetas están organizados en una estructura jerárquica en forma de árbol.
Esta estructura comienza desde un único directorio principal llamado `/`, conocido como la raíz del sistema (root).

```
/                          ← Raíz del sistema
├── home/                  ← Carpetas de usuarios
│   └── tu_usuario/        ← Tu carpeta personal (~)
│       ├── Documentos/
│       ├── Descargas/
│       └── Escritorio/
├── etc/                   ← Archivos de configuración del sistema
├── bin/                   ← Programas esenciales (ls, cd, cp...)
├── usr/                   ← Programas instalados por el usuario
├── var/                   ← Archivos variables (logs, cachés...)
└── tmp/                   ← Archivos temporales
```

**¿Cómo funciona esta estructura?** 

Cada carpeta puede contener otras carpetas y archivos, formando una especie de “árbol” que se ramifica desde /.

**Por ejemplo:**
``` bash
/home/tu_usuario/Documentos
```

**Significa:**

/ → raíz del sistema
home/ → carpeta donde viven los usuarios
tu_usuario/ → tu cuenta personal
Documentos/ → carpeta de documentos

## Diferencia con Windows
En Windows existen varias unidades como:

```
C:\
D:\
E:\
```

En Linux, en cambio, todo forma parte de un único árbol que comienza en `/`.
Incluso los discos duros, memorias USB o particiones adicionales se integran dentro de esta misma estructura.

---

## Comandos de navegación

La terminal permite desplazarte por el sistema de archivos mediante comandos simples pero muy potentes.

## `pwd` — ¿Dónde estoy?

```bash
$ pwd
/home/tu_usuario
```

`pwd` significa **Print Working Directory**.

Muestra la ruta completa del directorio en el que te encuentras actualmente.

Por ejemplo:

```bash
/home/tu_usuario/Documentos
```

indica que estás dentro de la carpeta `Documentos` de tu usuario.

---

## `ls` — Ver el contenido de un directorio

```bash
$ ls
Documentos  Descargas  Escritorio  imagenes  notas.txt
```

`ls` lista los archivos y carpetas del directorio actual.

---

### Opciones más utilizadas

```bash
$ ls -l
```

Muestra la información en formato largo:

- permisos
- propietario
- tamaño
- fecha de modificación

---

```bash
$ ls -a
```

Muestra también los archivos ocultos  
(los que comienzan con `.`).

---

```bash
$ ls -la
```

Combina `-l` y `-a`.

---

```bash
$ ls -lh
```

Muestra tamaños legibles para humanos (`KB`, `MB`, `GB`).

---

```bash
$ ls /etc
```

Lista el contenido de otro directorio sin necesidad de moverte a él.

---

Ejemplo de `ls -l`:
```
drwxr-xr-x 2 usuario grupo 4096 may  3 10:00 Documentos
-rw-r--r-- 1 usuario grupo  234 may  2 15:30 notas.txt
```
 
La primera letra indica:
- `d` → es un directorio
- `-` → es un archivo regular
- `l` → es un enlace simbólico
---

## `cd` — Cambiar de directorio

El comando `cd` (*Change Directory*) se utiliza para moverse entre carpetas.

### Ejemplos básicos

```bash
$ cd Documentos
```

Entrar en la carpeta `Documentos`.

**otras formas**

```bash
$ cd /etc                # Ir a /etc (ruta absoluta)
$ cd ..                  # Subir un nivel (ir al directorio padre)
$ cd ../..               # Subir dos niveles
$ cd ~                   # Ir a tu carpeta personal (home)
$ cd -                   # Volver al directorio anterior
$ cd                     # Sin argumentos, también va al home
```

---

---
 
## Rutas absolutas vs relativas
 
Este es un concepto fundamental. Hay dos formas de indicar dónde está algo:
 
### Ruta absoluta
Empieza desde la raíz `/`. Es como la dirección completa de una casa.
 
```bash
$ cd /home/usuario/Documentos/proyecto
```
 
Siempre funciona sin importar desde dónde la uses.
 
### Ruta relativa
Empieza desde donde estás ahora. Es como decir "dobla a la derecha" sin saber dónde empezaste.
 
Si estás en `/home/usuario`:
```bash
$ cd Documentos/proyecto    # Equivale a cd /home/usuario/Documentos/proyecto
```
 
Si estás en `/home/usuario/Documentos`:

```bash
$ cd ..                     # Sube a /home/usuario
$ cd ../otra_carpeta         # Sube y entra a otra_carpeta
```

---
 
## Comandos para inspeccionar archivos
 
### `file` — ¿Qué tipo de archivo es?
 
```bash
$ file notas.txt
notas.txt: ASCII text
 
$ file foto.png
foto.png: PNG image data, 1920 x 1080
```
 
### `du` — Tamaño de archivos/directorios
 
```bash
$ du -h archivo.txt        # Tamaño de un archivo en formato legible
$ du -sh Documentos/       # Tamaño total de una carpeta
$ du -sh *                 # Tamaño de todo lo que hay en el directorio actual
```
 
### `df` — Espacio en disco disponible
 
```bash
$ df -h
```
```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   12G   38G  24% /
```
 
---

## El comando `tree` (opcional pero útil)
 
Si está instalado, muestra la estructura de carpetas visualmente:
 
```bash
$ tree
.
├── Documentos
│   ├── proyecto
│   │   └── index.html
│   └── notas.txt
└── Descargas
 
$ tree -L 2    # Mostrar solo 2 niveles de profundidad
```

---
 
## Resumen de comandos
 
| Comando | Qué hace |
|---------|----------|
| `pwd` | Muestra el directorio actual |
| `ls` | Lista el contenido del directorio |
| `ls -la` | Lista con detalles + archivos ocultos |
| `cd carpeta` | Entra a una carpeta |
| `cd ..` | Sube un nivel |
| `cd ~` | Va al directorio home |
| `cd -` | Vuelve al directorio anterior |
| `file nombre` | Muestra el tipo de archivo |
| `du -sh carpeta` | Muestra el tamaño de una carpeta |
| `df -h` | Muestra el espacio en disco 