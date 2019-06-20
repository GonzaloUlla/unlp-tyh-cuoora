# TyH - Primera clase remota - 26/04
```smalltalk
object message: parameter
```
## Clases
```smalltalk
Object subclass: #CuentaBancaria
    instanceVariableNames: 'saldo' "atributos"
    classVariableNames: '*'
    package: 'CuentasBancarias'
```

## Métodos
```smalltalk
extraer: unMonto
    self saldo - unMonto >= 0
        ifTrue: [ saldo := self saldo - unMonto ].
        ifFalse: [ self error: 'No hay dinero' ].
```

## Atributos privados
```smalltalk
descubierto: unNumero
    descubierto := unNumero.
```

## Colecciones
```smalltalk
| cuentas | "variable temporal"
cuentas := OrderedCollection new.
cuentas add: ((CuentaBancaria new) saldo: 1000).
^cuentas anySatisfy: [ :cuenta | cuenta saldo > 1000 ]. "opción 1"
^cuentas do: [ :cuenta | cuenta descubierto: 300 ]. "opción 2"
```
### Tipos
* OrderedCollection
* SortedCollection
* Set
* Bag
* Dictionary
* Array

## Bloques, ciclos y condicionales
```smalltalk
"Método timesRepeat de clase Number recibe un bloque como argumento"
10 timesRepeat: [ cuenta depositar: 1000 ].
"Condicional que retorna true/false"
(cuentaCorriente depositar: 1000) = 1010.
```

## Principios de OOP
### Herencia
* Relación del tipo "es un"
  * A es un B si A, hace lo que B
  * Un objeto es su protocolo
  * Si un objeto tiene el mismo comportamiento que otro, la jerarquía de clases es correcta
* Todas las clases heredan de otra
* Se arma una "jerarquía de clases"
### Polimorfismo
* Dos objetos son polimórficos respecto a un mensaje si ambos lo pueden responder
* Ventajas: Código genérico, objetos intercambiables y desacoplados
### Clases
* Agrupan comportamiento común, definen la forma y crean instancias
