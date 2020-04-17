api
deleteAllByClass: aClass
	"elimina todos los elementos almacenados en memoria de una clase demorando 1 segundo"

	(Delay forMilliseconds: 1000) wait.
	^ bag at: aClass put: OrderedCollection new