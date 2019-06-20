# TyH - Tercera clase remota - 10/05
* La primera clase de Matías Urbieta
* Orden de los archivos: Parte 3, Mateo y Parte 4

## Diagrama de Clase
### Operadores de Clase
* Mensajes de Clase (Constructores) y Atributos de Clase, van **subrayados**
### Visibilidad
* Pública (+)
* Privada (-)
* Protegida (#)
### Relaciones
* Poner nombres sobre las relaciones
* Se convierten en variables de instancia (atributos)
* **Agregación**: sin pintar el rombo, más débil
* **Composición**: rombo pintado, relación todo/parte, la parte no existe sin el todo
### Ejemplo: Obra Teatral
* Atributos
  * `-id: Integer {frozen}`
  * `#nombre: String`
  * `#responsable [1..2]: String`

* Métodos
  * `+genero: String = "musical"`
  * `+nuevaRep(nombre:String)`
  * `+estaVigente(): Boolean {isQuery}`

## Diagrama de Secuencia
* Interacción entre objetos
* `:Cuenta` instancia anónima, `cuenta:Cuenta` instancia con nombre
* `objetoA:ClaseA` línea de vida y activación
* Mensajes: pueden ser Sincrónicos o Asíncronos
* https://www.websequencediagrams.com
### Frames
* `Opt` si se cumple, se ejecuta
* `Alt` true/false, 2 caminos
* `Loop` una iteración

## Ejercicio 01
* Proyecto de desarrollo: desarrolladores y líderes técnicos
* Tablero con tareas, inicialmente del backlog
* Se pueden crear tableros
* Las tareas se mueven de listas
* Cada tarea a un developer, puede cambiar
* Se pueden crear listas, se termina una lista, se empieza otra