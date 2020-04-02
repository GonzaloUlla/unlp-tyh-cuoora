api
put: anObject
	"almacena un objeto en memoria"

	| col |
	col := self initializeOrGetCollectionFor: anObject class.
	col add: anObject