# Proyecto_Final_Telematica

**Version**: 1.0.0

## Tabla de contenidos

- [Descripción](#descripcion)
- [Uso](#uso)
- [Estructura del Proyecto](#estructura-proyecto)
- [Licencia](#copyright)

## Descripción

Blue Grizly es una PWA en Angular, Node y Python, que permite cotizar polizas de seguros en tiempo real, obteniendo un valor aproximado de inmediato y cargando toda la información en un CRM de la empresa para que lo brokers se pongan en contacto con el interesado.

## Estructura del Proyecto

- **backend/**: Carpeta que contiene todo el backend de la aplicación.

  - **Dockerfile**: Intrucciones para construcción del backend de la aplicación.
  - **runserver.py/**: Archivo en terminal para correr el backend.

- **frontend/**: Carpeta que contiene todo el frontend de la aplicación.
  - **www/**: Carpeta que contiene todos los archivos en producción de la aplicación.
  - **Dockerfile**: Intrucciones para construcción del frontend de la aplicación.
- **docker-compose.yml**: Intrucciones para crear los diferentes contenedores de la aplicación.
- **main.tf**: Instrucciones para en lanzamiento automatica de la aplicación en AWS.
- **script.sh**: Archivo ejecutable que construye los contenedores.

## Copyright

© [2023] [Blue Grizly]. Todos los derechos reservados0. Este software es propiedad de [Blue Grizly] y es protegido por las politicas de copyright.
