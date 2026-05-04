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
