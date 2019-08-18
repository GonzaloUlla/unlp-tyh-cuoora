# TyH - Segunda clase remota - 03/05

## Start-up
* Crear **paquete**: Upper Camel Case
* Crear **clase**: Upper Camel Case, basarme en el template de Object
* Crear **protocolo**: en mensajes
  * Protocolo *accessing*: getters & setters
  * Protocolo *testing*: devuelve true/false
  * Protocolo *api*: los mensajes que expongo
  * Protocolo *private*: es una convención como en Python
  * Protocolo *initialization*: contiene **initialize** y demás
  * Protocolo **instance creation**: class messages para inicializar

## Shortcuts del Playground
* Hacelo: Do it
* Mostrame el resultado: Print it
* Hacelo y mostrame una ventanita: Inspect it

## Getter & Setter
```smalltalk
hijos
    ^ hijos
```
```smalltalk
hijos: unNumero
    hijos := unNumero
```

## Instanciación y Mensajes de clase
### Initialization
```smalltalk
initialize
"A nivel de objeto"
    super initialize.
    hijos := OrderedCollection new.
```
### Más de un mensaje, un mensaje con dos parámetros
```smalltalk
Hijo new dni: 3030; nombre: 'Tiago'. "Mensaje a un objeto"
Hijo dni: 3030 nombre: 'Tiago'. "Mensaje de clase"
```
### Instance creation (mensaje de clase)
```smalltalk
dni: unString nombre: otroString
    | nuevo |
    nuevo := self new.
    nuevo dni: unString.
    nuevo nombre: otroString.
    ^ nuevo
```

## Imagen de Pharo
* Es un 'snapshot' de todo, objetos vivos, clases, etc.