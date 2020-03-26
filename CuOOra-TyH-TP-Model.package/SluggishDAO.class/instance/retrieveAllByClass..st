api
retrieveAllByClass: aClass
	"retorna todos los elementos almacenados en memoria de una clase demorando 1 segundo"

	(Delay forMilliseconds: 1000) wait.
	^ OrderedCollection newFrom: (self initializeOrGetCollecitonFor: aClass)