# Proyecto de Pruebas Automatizadas con Robot Framework

Este proyecto contiene una suite de pruebas de automatización web desarrolladas con Robot Framework y SeleniumLibrary.

## Requisitos

- Python 3.x
- Robot Framework (`pip install robotframework`)
- SeleniumLibrary (`pip install robotframework-seleniumlibrary`)
- WebDriver para el navegador deseado (ej. ChromeDriver para Google Chrome)

## Cómo Ejecutar las Pruebas

Para ejecutar todas las pruebas de la suite y generar los reportes en la carpeta `Results`, utiliza el siguiente comando desde la raíz del proyecto:

```sh
robot -d Results Tests/
```

Esto buscará y ejecutará todos los archivos de prueba (`.robot`) localizados dentro del directorio `Tests/`.
