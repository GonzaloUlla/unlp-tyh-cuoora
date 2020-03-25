accessing
retrieveAllByClass: aClass
	"Retorna todos los elementos almacenados en memoria de una clase demorando 1 segundo"

	^ self elements select: [ :each | each isKindOf: aClass ]