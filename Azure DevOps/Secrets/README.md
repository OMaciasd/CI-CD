# Azure: Cifrado de secretos con SOPS (Pipeline)

## Descripcion

- Un saludo, espero se encuentre bien
- A continuación detallaremos, desde Infraestructura - CyberSecurity, la guía del paso a paso para:
- Que cualquier colaborador de Desrarrollo de Producto en la compañia, pueda Cifrar Secretos de repositorios o estructuras de archivos en repos desde una llave.

## Requerimientos

- Tener acceso, como lectura y escritura en cambios hacia el repositorio.

## Guía

- Crear una rama feature/test desde Main.

## Etapas

### Construcción

#### appsettings.json

- Abrir el archivo AppSettings.json.

~~~ JSON
{
    "Logging": {
            "LogLevel": {
                    "Default": "",
                    "Microsoft.AspNetCore": ""
            }
    },
    "Cache": [
            {
                    "Name": "",
                    "Hours": "",
                    "Minutes": "",
                    "seconds": ""
            }
    ],
 }
~~~

- Editar con el schema del archivo con claves y valores a cifrar.
- Commitear los cambios.
- Correr el pipeline "ci.yml", correspondiente al repositorio.

### Publicaciones

- Descargar el artefacto.

### Pruebas

- validar el resultado.
