# Ficheros de configuración personal para máquinas Windows

Inspirado en el impresionante proyecto de [Jay Harris](https://github.com/jayharris/dotfiles-windows). Sin embargo, quiero mantenerlo simple. No quiero poner mucha magia aquí para evitar desaprender cómo utilizar máquinas en las que no tengo esto. Tampoco quiero dedicarle muchísima energía, porque al final esto es configuración y no un proyecto para desarrollar algo útil (aunque es útil para mí, eso está claro).

Mi objetivo es tener la máquina lo más limpia posible y utilizar Visual Studio Code y el desarrollo remoto en contenedores. La extensión para trabajar en contenedores también permite cargar dotfiles en el contenedor, eso lo trabajaré en un proyecto a parte.

## Instalación

### Utilizando Git y el programa de arranque

Clona el repositorio y ejecuta el programa. El programa crea un acceso directo de los ficheros de configuración al estilo de los dotfiles para Linux.

En PowerShell:

```posh
> git clone https://github.com/jisbert/dotfiles-windows.git
> cd dotfiles-windows
> # Set-ExecutionPolicy ByPass -Scope Process --- ¿necesario cuando eres admin?
> .\Bootstrap.ps1
```

## Dependencias

El script instala módulos y ayuda de PowerShell y habilita características de Windows. [La lista de dependencias externas](Dependencies.md) contiene enlaces para descargar las dependencias externas.

### Vim

Solo para el vim que viene con git para Windows, no quiero instalar vim aparte.

En git bash:

```bash
vim +PlugInstall +qall
```

## Futuros pasos

Implementar algunos de los consejos enumerados [aquí](https://dotfiles.github.io/) o [aquí](https://github.com/webpro/awesome-dotfiles). Crear dotfiles para linux.