# CuOOra
* CuOOra: red social de preguntas y respuestas.
* Trabajo final de Técnicas y Herramientas 2019
* Maestría en Ingeniería de Software
* Universidad Nacional de La Plata (UNLP)

### Autores
* Julieta Ríos
* Gonzalo Ulla

## Tabla de Contenidos
1. [Enunciado](https://github.com/GonzaloUlla/unlp-tyh-cuoora/blob/master/TP1%20-%20Enunciado.pdf)
2. [Diagrama de Clases UML](#diagrama-de-clases-uml)
3. [Paquete con el Modelo](#paquete-con-el-modelo)
4. [Paquete con los Tests](#paquete-con-los-tests)
5. [Consideraciones y Supuestos](#consideraciones-y-supuestos)
6. [Notas de Clase](https://github.com/GonzaloUlla/unlp-tyh-cuoora/blob/master/notas-de-clase)


## Diagrama de Clases UML
TBD

## Paquete con el Modelo
TBD

## Paquete con los Tests
TBD

## Consideraciones y Supuestos
* *Problema:* Github no toma el carácter al final de una línea (`CRLF at EOL)` de Pharo (cuando se hace el `fileout` de un `Package.st`)
  * *Solución:* seguir este proceso al pushear cambios
  1. Hacer `fileout` del Package
  2. Copiar el `Package.st` al repo
  3. Copiar el **contenido** del `Package.st` al `Package.txt`
  4. Revisar cambios con `git diff`
  5. Commit & Push