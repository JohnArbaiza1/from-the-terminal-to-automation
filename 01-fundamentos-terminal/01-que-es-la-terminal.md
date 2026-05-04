# ¿Qué es la Terminal?
 
## Antes de empezar
 
Probablemente estés acostumbrado a interactuar con tu computadora usando el mouse: hacer clic en iconos, arrastrar archivos o navegar por menús. La terminal, en cambio, es una forma completamente distinta de comunicarse con el sistema operativo: mediante texto.

La terminal es una interfaz basada en comandos que nos permite. controlar el sistema de forma directa. En lugar de usar elementos visuales se escriben instrucciones que la computadora ejecuta, lo que da un mayor nivel de precisión y control.

**Por ejemplo:**
En lugar de hacer clic en "Nueva Carpeta", escribes `mkdir nueva-carpeta`.  
En lugar de arrastrar un archivo, escribes `mv archivo.txt carpeta/`.
 
Al principio puede parecer más complejo, pero con la práctica se vuelve una herramienta mucho más rápida, eficiente y poderosa.

---

## ¿Qué es exactamente la terminal?
Para entenderla bien, necesitamos distinguir tres conceptos que suelen confundirse:

### Terminal (o emulador de terminal)
Es la ventana donde escribes los comandos. En el pasado, una terminal era un dispositivo físico (monitor y teclado) conectado a una computadora central. Hoy en día, es una aplicación que simula ese comportamiento.

En Ubuntu/Linux puedes abrirla con Ctrl + Alt + T o buscándola como “Terminal” en el menú de aplicaciones.

### Shell
Es el programa que interpreta los comandos que escribes y los envía al sistema operativo. La terminal es solo la interfaz visual; el shell es el componente que realmente procesa las instrucciones.

El shell más común en Linux es Bash (Bourne Again SHell). Cada vez que escribes un comando y presionas Enter, es Bash quien lo ejecuta.

### Prompt
Es la línea de texto que aparece esperando tus comandos. Normalmente se ve así:
```
usuario@nombreequipo:~$
```

Desglosado:
- `usuario` → tu nombre de usuario
- `@nombreequipo` → el nombre de tu computadora
- `~` → tu ubicación actual (`~` significa tu carpeta personal, `/home/usuario`)
- `$` → indica que eres un usuario normal (si fuera `#`, serías administrador/root)
---

## Tu primer comando
Antes de entender cómo funciona todo, vamos a ejecutar algo real.

Abre la terminal y escribe:
```bash
$ echo "Hola, mundo"
```

Luego presiona Enter.

Deberías ver:
```
Hola, mundo
```

¡Listo! Acabas de ejecutar tu primer comando.

`echo` es un comando que simplemente imprime texto en la terminal.

**¿Qué acaba de pasar?**

Aunque parezca simple, ya ocurrieron varias cosas:

- Escribiste un comando (echo)
- El shell lo interpretó
- El sistema lo ejecutó
- La terminal mostró el resultado

---

## Comandos básicos de orientación
Ahora veremos algunos comandos esenciales para ubicarnos en el sistema.

**¿Quién soy? —** `whoami`
```bash
$ whoami
```
Salida:
```
tu_usuario
```
Muestra con qué usuario estás trabajando actualmente.

**¿Dónde estoy? -** `pwd`
```bash
$ pwd
```
Salida:
```
/home/tu_usuario
```
 
`pwd` significa *Print Working Directory*. Te dice en qué carpeta estás en este momento.

**Fecha y hora —** `date`
```bash
$ date
```
Ejemplo de salida:
```
Sun May  3 10:45:23 CST 2026
```
Muestra la fecha y hora actuales del sistema.
 
---

## Cómo se construye un comando
La mayoría de los comandos siguen esta estructura:
```
comando [opciones] [argumentos]
```

- **comando** → la acción que quieres ejecutar (`ls`, `cp`, `mkdir`...)
- **opciones** → modifican cómo se comporta el comando, suelen empezar con `-` o `--`
- **argumentos** → sobre qué actúa el comando (un archivo, una carpeta, un texto...)

Ejemplo:
 
```bash
$ ls -l /home
```
 
- `ls` → el comando (listar archivos)
- `-l` → opción (formato largo/detallado)
- `/home` → argumento (la carpeta que quiero listar)

---

## Cómo pedir ayuda desde la terminal
Una de las habilidades más importantes es aprender a ayudarse así mismo desde la terminal.

Manual completo — `man`
 
```bash
$ man ls
```

**Abre el manual del comando ls.**
- Navega con flechas
- Sal con q

> 💡 `man` funciona para casi cualquier comando. Cuando dudes de cómo usar algo, `man comando` es tu primer recurso.